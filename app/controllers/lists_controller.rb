class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @list = List.new(params[:list])
    if @list.save
      redirect_to lists_path
    else
      flash.now[:error] = I18n.t('list_create_error')
      render action: :new
    end
  end

  def edit
    @list = List.find(params[:id])
    render action: :new
  end

  def new
    @list = List.new
  end

  def update
    @list = List.find(params[:id])
    @list.update_attributes(params[:list])
    redirect_to lists_path
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

end
