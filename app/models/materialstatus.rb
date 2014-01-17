class Materialstatus < ActiveRecord::Base
  
  validates_presence_of :label
  
  has_many :materials
end
