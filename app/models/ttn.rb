class Ttn < ActiveRecord::Base
  attr_accessible :date_in, :date_out, :good, :point_in, :point_out, :invoice_in, :invoice_out, :driver, :car_number,
                  :weight_in, :weight_out, :weight_difference, :distance, :diesel, :organization_in, :organization_out,
                  :realization_231, :services_903, :store_28, :sto_233, :availability_ttn
  has_one :user
end
