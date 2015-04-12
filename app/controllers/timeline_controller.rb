class TimelineController < ApplicationController

  def index
    @last_donations = Donation.includes(:user).order(donated_at: :desc).limit(10)
    @tip = Tip.offset(rand(Tip.count)).first
    @users_that_need_donation = User.needs_donation.limit(5).where.not(id: current_user.id).order(updated_at: :desc)
  end
end
