class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def create
    @organization = Organization.new(params[:organization])
    if @organization.save
      redirect_to organizations_path
    else
      flash.now[:error] = I18n.t('organization_create_error')
      render action: :new
    end
  end

  def edit
    @organization = Organization.find(params[:id])
    render action: :new
  end

  def new
    @organization = Organization.new
  end

  def update
    @organization = Organization.find(params[:id])
    @organization.update_attributes(params[:organization])
    redirect_to organizations_path
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_path
  end

end
