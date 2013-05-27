class DriversController < ApplicationController

  def index
    @drivers = Driver.all
  end

  def create
    @driver = Driver.new(params[:driver])
    if @driver.save
      redirect_to drivers_path
    else
      flash.now[:error] = I18n.t('driver_create_error')
      render action: :new
    end
  end

  def edit
    @driver = Driver.find(params[:id])
    render action: :new
  end

  def new
    @driver = Driver.new
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.update_attributes(params[:driver])
    redirect_to drivers_path
  end

  def destroy
    @driver = Driver.find(params[:id])
    @driver.destroy
    redirect_to drivers_path
  end

end
