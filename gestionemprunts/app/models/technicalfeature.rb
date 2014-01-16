class Technicalfeature < ActiveRecord::Base
  
  has_many :materials
  belongs_to :materialtype
  
  has_one :technicalfeaturequantity
  
  has_many :cartlistmaterials
  has_many :techitems, :through => :cartlistmaterials, :source => :car
  
end
