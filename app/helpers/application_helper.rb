module ApplicationHelper
  include AccountHelper
  include FontAwesomeHelper

  def datetime_ago date
    content_tag :date, nil, title: date.to_s(:long), "data-source": date.to_time.to_i
  end

  def resource_name
  	:user
  end

   def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
