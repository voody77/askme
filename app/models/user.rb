require 'openssl'

class User < ApplicationRecord
  # Параметры работы модуля шифрования паролей
  ITERATIONS = 20000
  DIGEST = OpenSSL::Digest::SHA256.new

  has_many :questions

  validates :email, :username, presence: true, uniqueness: true
  validates :email, 'valid_email_2/email': true
  validates :username, length: {minimum: 3, maximum: 40}
  validates :username, format: {
    with: /\A\w+\z/,
    message: "only allows letters, numbers or _"
  }

  attr_accessor :password

  validates_presence_of :password, presence: true, on: :create
  validates_confirmation_of :password

  before_validation :downcase!, uniqueness: true
  before_save :encrypt_password

  def encrypt_password
    if password.present?
      # Создаем соль - рандомная строка, усложняющая энкрипт паролей
      self.password_salt = User.hash_to_string(OpenSSL::Random.random_bytes(16))

      # Создаем хэш пароля - длинная уникальная строка, из которой невозмодно восстановить исходный пароль
      self.password_hash = User.hash_to_string(OpenSSL::PKCS5.pbkdf2_hmac(
        password, password_salt, ITERATIONS, DIGEST.length, DIGEST)
      )
    end
  end

  def self.hash_to_string(password_hash)
    password_hash.unpack('H*')[0]
  end

  def self.authenticate(email, password)
    user = find_by(email: email.downcase) # Ищем email в #users

    # Сравниваем хэш паролей, исходный пароль не сохраняется.
    return nil unless user.present?

    hashed_password = User.hash_to_string(
      OpenSSL::PKCS5.pbkdf2_hmac(
        password, user.password_salt, ITERATIONS, DIGEST.length, DIGEST
      )
    )

    return user if user.password_hash == hashed_password
    nil
  end

  private

  def downcase!
    self.username&.downcase!
    self.email&.downcase!
  end
end
