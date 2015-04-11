class Account::SessionsController < Devise::SessionsController
  before_filter :devise_filter

  protected

  def after_sign_in_path_for(resource)
    sign_in_url = url_for(:action => 'new',
                          :controller => 'sessions',
                          :only_path => false,
                          :protocol => 'http')
    if request.referer == sign_in_url
      super
    else
      timeline_path
    end
  end

  private

  def devise_filter
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
  end
end


