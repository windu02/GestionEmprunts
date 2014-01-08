class User < ActiveRecord::Base

  validates_presence_of :firstname, :lastname, :email, :password
  validates_uniqueness_of :email

	belongs_to :privilege
	has_many :requests
	has_many :appointments, :through=>:requests, :source=>:complexdates
	
	has_and_belongs_to_many :materialgroups
	
end
