class TtnsController < ApplicationController

  def new
    @ttn = Ttn.new
    @lists = List.all
  end

  def index
    @ttns = Ttn.filter_by_params(params)
    @drivers = Driver.all
    @organizations = Organization.all
    @transports = Transport.all
  end

  def create
    @ttn = Ttn.new(params[:ttn])
    if @ttn.save
      redirect_to ttns_path
    else
      render action: :new
    end
  end

  def edit
    @ttn = Ttn.find(params[:id])
    @lists = List.where(driver_id: @ttn.driver_id).map { |item| [item.number,item.id] }
    render action: :new
  end

  def update
    binding.pry
    @ttn = Ttn.find(params[:id])
    @ttn.update_attributes(params[:ttn])
    redirect_to ttns_path
  end

  def destroy
    @ttn = Ttn.find(params[:id])
    @ttn.destroy
    redirect_to ttns_path
  end

end
