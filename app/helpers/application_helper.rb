module ApplicationHelper
  include AccountHelper
  include FontAwesomeHelper

  def datetime_ago date
    content_tag :date, nil, title: date.to_s(:long), "data-source": date.to_s(:rfc822)
  end
end
