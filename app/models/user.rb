class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation, :first_name, :last_name, :ttn_ids,
                  :password_confirmation
  attr_accessor :password_confirmation

  has_many :ttns
end
