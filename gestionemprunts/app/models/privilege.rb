class Privilege < ActiveRecord::Base

  validates_presence_of :label

	has_many :users

end
