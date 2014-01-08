class Complexdate < ActiveRecord::Base
		belongs_to :request
		
		belongs_to :complexdatetype
end
