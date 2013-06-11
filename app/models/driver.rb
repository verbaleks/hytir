class Driver < ActiveRecord::Base
  attr_accessible :name, :list_id, :description
  has_many :ttns
  validates :name, uniqueness: true
end
