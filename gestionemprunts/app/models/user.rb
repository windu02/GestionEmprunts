class User < ActiveRecord::Base

	belongs_to :privilege
	has_many :requests
	has_many :appointments, :through=>:requests, :source=>:complexdates
	
	has_and_belongs_to_many :materialgroups
	
end
