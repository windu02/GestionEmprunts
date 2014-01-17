class Complexdatetype < ActiveRecord::Base
  
    validates_presence_of :label
    
    has_many :complexdates
    
end
