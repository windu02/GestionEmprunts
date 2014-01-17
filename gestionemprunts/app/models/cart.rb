class Cart < ActiveRecord::Base
  
  has_many :cartlistmaterials
  has_many :cartitems, :through => :cartlistmaterials, :source => :technicalfeature
 
end
