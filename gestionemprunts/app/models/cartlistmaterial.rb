class Cartlistmaterial < ActiveRecord::Base
  
  belongs_to :cart
  belongs_to :technicalfeature
  
end
