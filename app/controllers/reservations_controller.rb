class ReservationsController < ApplicationController
  def index
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new(params[:restaurant])
    if @reservation.save
      redirect_to root_path, notice: 'reservation successful!'
    else
      redirect_to root_path, notice: "reservation failed..."
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
