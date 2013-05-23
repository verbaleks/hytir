class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation, :first_name, :last_name, :ttns_id,
                  :password_confirmation
  attr_accessor :password_confirmation

  has_many :ttns
end
