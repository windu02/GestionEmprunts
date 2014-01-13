class Material < ActiveRecord::Base
  
  validates_presence_of :serialnumber
  validates_uniqueness_of :serialnumber
  
	has_and_belongs_to_many :requests
	
	belongs_to :materialgroup
	belongs_to :materialstatus
	belongs_to :technicalfeature

end
