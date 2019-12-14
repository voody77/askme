module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def pluralize(number, one, few, many)
    return many if number%100 >= 11 && number%100 <= 14

    case number % 10
    when 1 then one
    when 2, 3, 4 then few
    else many
    end
  end
end
