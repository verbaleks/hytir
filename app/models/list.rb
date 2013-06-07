class List < ActiveRecord::Base
  attr_accessible :number, :driver_id, :ttn_ids

  has_many :ttns
  belongs_to :driver
end
