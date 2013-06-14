class AddDescriptionToTtn < ActiveRecord::Migration
  def change
    add_column :ttns, :description, :string
  end
end
