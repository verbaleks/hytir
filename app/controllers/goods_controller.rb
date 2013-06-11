class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end

  def create
    @good = Good.new(params[:good])
    if @good.save
      redirect_to goods_path
    else
      flash.now[:error] = I18n.t('good_create_error')
      render action: :new
    end
  end

  def edit
    @good = Good.find(params[:id])
    render action: :new
  end

  def new
    @good = Good.new
  end

  def update
    @good = Good.find(params[:id])
    @good.update_attributes(params[:good])
    redirect_to goods_path
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to goods_path
  end
end
