class Ttn < ActiveRecord::Base
  attr_accessible :date_in, :date_out, :good, :point_in, :point_out, :invoice_in, :invoice_out, :driver_id, :car_number,
                  :weight_in, :weight_out, :weight_difference, :distance, :diesel, :transport_id, :customer_id, :organization_in_id, :organization_out_id,
                  :realization_231, :services_903, :store_28, :sto_233, :availability_ttn_in, :availability_ttn_out,
                  :visible, :type_of, :list_id

  belongs_to :list
  belongs_to :driver
  belongs_to :transport
  belongs_to :customer, class_name: Organization, foreign_key: 'customer_id'
  belongs_to :organization_in, class_name: Organization, foreign_key: 'organization_in_id'
  belongs_to :organization_out, class_name: Organization, foreign_key: 'organization_out_id'

  before_save :calculate_difference

  def self.filter_by_params(params)
    scoped = self.scoped
    scoped = scoped.where(:visible => params[:visible]) if params[:visible].present?
    scoped = scoped.where(:type_of => params[:type_of]) if params[:type_of].present?
    scoped = scoped.where(:driver_id => params[:driver_id]) if params[:driver_id].present?
    scoped = scoped.where(:transport_id => params[:transport_id]) if params[:transport_id].present?
    scoped = scoped.where(:organization_in_id => params[:organization_in_id]) if params[:organization_in_id].present?
    scoped = scoped.where(:organization_out_id => params[:organization_out_id]) if params[:organization_out_id].present?
    scoped
  end

  private

  def calculate_difference
    if ( self.weight_in && self.weight_out )
      self.weight_difference = self.weight_out - self.weight_in
    end
  end

end
