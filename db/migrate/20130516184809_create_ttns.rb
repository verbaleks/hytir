class CreateTtns < ActiveRecord::Migration
  def change
    create_table :ttns do |t|
      t.integer     :type_of
      t.boolean     :visible
      t.date        :date_in
      t.date        :date_out
      t.string      :good
      t.string      :point_in
      t.string      :point_out
      t.integer     :invoice_in
      t.integer     :invoice_out
      t.string      :car_number
      t.integer     :weight_in
      t.integer     :weight_out
      t.integer     :weight_difference
      t.integer     :distance
      t.integer     :diesel
      t.integer     :transport_id
      t.integer     :customer_id
      t.integer     :organization_in_id
      t.integer     :organization_out_id
      t.integer     :realization_231
      t.integer     :services_903
      t.integer     :store_28
      t.integer     :sto_233
      t.boolean     :availability_ttn_in
      t.boolean     :availability_ttn_out
      t.integer     :driver_id
      t.integer     :list_id
      t.timestamps
    end
  end
end
