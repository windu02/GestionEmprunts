class Complexdate < ActiveRecord::Base
		
		#je me souviens plus si les heures sont obligatoires, il me semble que nn
		validates_presence_of :cdate
		
		belongs_to :request	
		belongs_to :complexdatetype
end
