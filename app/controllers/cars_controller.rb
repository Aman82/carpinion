class CarsController < ApplicationController
  def index
      @cars = Car.all
  end

  def new
       @car = Car.new
  end

  def show
      @car = Car.find(params[:id])
  end
 
  def create
     @car = Car.new(params.require(:car).permit(:make, :model, :year, :trim, :mileage, :price, :transmission, :colour, :description))
     if @car.save
          redirect_to root_path
     else
          render 'new'
     end
  end

  def edit
        @car = Car.find(params[:id])
  end

  def update
      @car = Car.find(params[:id])
      if @car.update_attributes(params.require(:car).permit(:make, :model, :year, :trim, :mileage, :price, :transmission, :colour, :description))
          redirect_to car_path
      else
          render 'edit'
      end
  end

  def destroy
       @car = Car.find(params[:id])
        @car.destroy
        redirect_to carinfos_path
  end
end
