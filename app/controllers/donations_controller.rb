class DonationsController < ApplicationController
  load_and_authorize_resource

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    if @donation.save
      redirect_to(timeline_path, notice: "Doação criada com sucesso!")
    else
      render :new
    end
  end

  def destroy
    @donation.destroy
    redirect_to(timeline_path, notice: "Doação removida com sucesso!")
  end

  private

  def donation_params
    params.require(:donation).permit(:location, :donated_at, :amount, :comment)
  end
end
