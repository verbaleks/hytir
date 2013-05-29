class TtnsController < ApplicationController

  def new
    @ttn = Ttn.new
  end

  def index
    @ttns = Ttn.filter_by_params(params)
    @drivers = Driver.all
  end

  def create
    @ttn = Ttn.new(params[:ttn])
    @ttn.user_id = current_user.id
    if @ttn.save
      redirect_to ttns_path
    else
      render action: :new
    end
  end

  def edit
    @ttn = Ttn.find(params[:id])
    render action: :new
  end

  def update
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
