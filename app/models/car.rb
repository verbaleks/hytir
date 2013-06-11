class Car < ActiveRecord::Base
  attr_accessible :number
  has_many :ttns
  validates :number, uniqueness: true
end
