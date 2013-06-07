class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer     :number
      t.integer     :driver_id

      t.timestamps
    end
  end
end
