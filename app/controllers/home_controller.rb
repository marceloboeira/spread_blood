class HomeController < ActionController::Base
  layout 'application'
  def index
    if signed_in?
      redirect_to timeline_path
    end
    @top_users = User.ranking 5
  end
end
