class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(params[:car])
    if @car.save
      redirect_to cars_path
    else
      flash.now[:error] = I18n.t('car_create_error')
      render action: :new
    end
  end

  def edit
    @car = Car.find(params[:id])
    render action: :new
  end

  def new
    @car = Car.new
  end

  def update
    @car = Car.find(params[:id])
    @car.update_attributes(params[:car])
    redirect_to cars_path
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end
end
