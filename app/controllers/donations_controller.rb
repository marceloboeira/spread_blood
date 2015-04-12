class DonationsController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  before_filter :get_donation, except: [:new, :create]

  def new
    @donation = Donation.new
  end

  def show

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
    if current_user == donation.user
      @donation.destroy
      @message =  "Doação removida com sucesso!"
    else
      @message = "Você não pode remover esta doação!"
    end

    redirect_to(timeline_path, notice: @message)
  end

  private

  def get_donation
    @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:location, :donated_at, :amount, :comment)
  end
end
