class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.new
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reserv_confirm_path
    else
      redirect_to  new_reservation_path
  end

  private 

    def reservation_params
      params.require(:reservation).permit(:name, :email, :nbperson, :date, :hour)
    end
end


