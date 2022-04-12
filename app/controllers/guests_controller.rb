class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def list
    @guest = Guest.find(params[:id])
  end

  def new
    @aguest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      redirect_to @guest
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
    def guest_params
      params.require(:guest).permit(:name, :email)
    end
end