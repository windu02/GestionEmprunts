class Request < ActiveRecord::Base	
	belongs_to :user
	has_many :complexdates
	has_and_belongs_to_many :materials
	
	belongs_to :requeststatus
	
end
