class RankingController < HomeController

  def index
    @top_users = User.ranking 10
  end
end
