class Cartlistmaterial < ActiveRecord::Base
  
  has_many :cartitems, :trough => :technicalfeatures, :source => :carts
  has_many :technicalfeatures 
  
end
