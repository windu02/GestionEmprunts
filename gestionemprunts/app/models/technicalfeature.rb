class Technicalfeature < ActiveRecord::Base
  
  has_many :materials
  belongs_to :materialtype
  
  has_one :technicalfeaturequantity
end
