class TransportsController < ApplicationController
  def index
    @transports = Transport.all
  end

  def create
    @transport = Transport.new(params[:transport])
    if @transport.save
      redirect_to transports_path
    else
      flash.now[:error] = I18n.t('transport_create_error')
      render action: :new
    end
  end

  def edit
    @transport = Transport.find(params[:id])
    render action: :new
  end

  def new
    @transport = Transport.new
  end

  def update
    @transport = Transport.find(params[:id])
    @transport.update_attributes(params[:transport])
    redirect_to transports_path
  end

  def destroy
    @transport = Transport.find(params[:id])
    @transport.destroy
    redirect_to transports_path
  end
end
