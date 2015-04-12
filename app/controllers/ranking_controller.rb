class RankingController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    @top_users = User.ranking 10
  end
end
