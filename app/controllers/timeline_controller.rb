class TimelineController < ApplicationController

  def index
    @last_donations = Donation.includes(:user).order(donated_at: :desc).limit(10)
  end
end
