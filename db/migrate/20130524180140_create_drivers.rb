class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string    :name
      t.text      :description
      t.timestamps
    end
  end
end
