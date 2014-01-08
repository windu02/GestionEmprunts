class Materialgroup < ActiveRecord::Base
  
  validates_presence_of :label, :site
  
	has_and_belongs_to_many :users
end
