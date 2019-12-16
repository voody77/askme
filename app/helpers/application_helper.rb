module ApplicationHelper

  def question_forms
   %w[вопрос вопроса вопросов]
  end

  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def pluralize(number, one, few, many)
    return many if number % 100 >= 11 && number % 100 <= 14

    case number % 10
    when 1 then one
    when 2, 3, 4 then few
    else many
    end
  end

  def num_pluralize(number, one, few, many)
    "#{number} #{pluralize(number, one, few, many)}"
  end

  def question_pluralize(count)
    num_pluralize(count, *question_forms)
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fas fa-#{icon_class}"
  end
end
