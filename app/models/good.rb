class Good < ActiveRecord::Base

  attr_accessible :name

  has_many :ttns

  validates :name, uniqueness: true
end
