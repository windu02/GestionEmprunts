class Requeststatus < ActiveRecord::Base
  
  validates_presence_of :label
  
  has_many :requests
end
