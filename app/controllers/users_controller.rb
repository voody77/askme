class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Vadim',
        username: 'voody77',
        avatar_url: 'https://www.gravatar.com/avatar/5f16d3f6fbbfe055fc34814ef7e88198?s=200.jpg'
      ),
      User.new(
        id: 2,
        name: 'Dina',
        username: 'dinulik',
        )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Vadim',
      username: 'voody77',
      avatar_url: 'https://www.gravatar.com/avatar/5f16d3f6fbbfe055fc34814ef7e88198?s=200.jpg'
    )

    @questions = [
      Question.new(
        text: 'Как дела?',
        created_at: Date.parse('10.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),Question.new(
      text: 'Сколько лет нашей планете??',
      created_at: Date.parse('18.12.2019')
    ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),Question.new(
      text: 'Сколько лет нашей планете??',
      created_at: Date.parse('18.12.2019')
    ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),
      Question.new(
        text: 'Сколько лет нашей планете??',
        created_at: Date.parse('18.12.2019')
      ),Question.new(
      text: 'Сколько лет нашей планете??',
      created_at: Date.parse('18.12.2019')
    )
    ]

    @new_question = Question.new
  end
end
