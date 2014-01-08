class Material < ActiveRecord::Base
	has_and_belongs_to_many :requests
	
	belongs_to :materialgroup
	belongs_to :materialstatus
end
