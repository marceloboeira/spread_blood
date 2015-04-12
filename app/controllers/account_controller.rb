class AccountController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  def show
    @user = User.find_by_username(params[:username])
  end
end
