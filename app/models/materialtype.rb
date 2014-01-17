class Materialtype < ActiveRecord::Base

	has_many :technicalfeatures
	has_many :associated_materials, :through=>:technicalfeatures, :source=>:materials
end
