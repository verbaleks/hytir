class Ttn < ActiveRecord::Base
  attr_accessible :date_in, :date_out, :good, :point_in, :point_out, :invoice_in, :invoice_out, :driver_id, :car_number,
                  :weight_in, :weight_out, :weight_difference, :distance, :diesel, :organization_in, :organization_out,
                  :realization_231, :services_903, :store_28, :sto_233, :availability_ttn_in, :availability_ttn_out,
                  :visible, :type_of
  belongs_to :user
  belongs_to :driver

  def self.filter_by_params(params)
    scoped = self.scoped
    scoped = scoped.where(:visible => params[:visible]) if params[:visible].present?
    scoped = scoped.where(:type_of => params[:type_of]) if params[:type_of].present?
    scoped = scoped.where(:driver_id => params[:driver_id]) if params[:driver_id].present?
    scoped
  end

end
