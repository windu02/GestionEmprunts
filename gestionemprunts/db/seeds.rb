# Clear the database
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

# Table privileges 

admin_privilege = Privilege.create :label => 'Admin'

####################


# Table users 

romain = User.create :firstname => 'Romain', :lastname => 'Roufast', :email => 'romain@gmail.com', :password => 'secret' , :privilege => admin_privilege
alexis = User.create :firstname => 'Alexis', :lastname => 'Laurent', :email => 'alexis@gmail.com', :password => 'secret' , :privilege => admin_privilege
suzy = User.create :firstname => 'Suzy', :lastname => 'Paeta', :email => 'suzy@gmail.com', :password => 'secret' , :privilege => admin_privilege

####################


# Table materialtypes

type1 = Materialtype.create :label=>'Tablette tactile'
type1.save

type2 = Materialtype.create :label=>'Ordinateur'
type2.save

type3 = Materialtype.create :label=>'Smartphone'
type3.save

####################


# Table technicalfeatures

feature1 = Technicalfeature.create :os => 'Android', :name => 'Acer', :version => '2.4', :memory => '250 Go', :ram => '8 Go', :processorfrequency => '2.4', :materialtype => type1
feature2 = Technicalfeature.create :os => 'Android', :name => 'Asus', :version => '4.1', :memory => '16 Go', :ram => '1 Go', :processorfrequency => '1,2', :materialtype => type1
feature3 = Technicalfeature.create :os => 'iOS', :name => 'iPad Air', :version => '7.0.4', :memory => '64 Go', :ram => '8 Go', :processorfrequency => '2.4', :materialtype => type1
feature4 = Technicalfeature.create :os => 'Windows', :name => 'Surface Pro 2', :version => '8', :memory => '128 Go', :ram => '4 Go', :processorfrequency => 'Non-connue', :materialtype => type1

feature5 = Technicalfeature.create :os => 'Windows', :name => 'Portabe HP Pavillon TouchSmart', :version => '8', :memory => '1 To', :ram => '4 Go', :processorfrequency => '2', :materialtype => type2
feature6 = Technicalfeature.create :os => 'iOS', :name => 'MacBook Air', :version => 'Mountain Lion', :memory => '128 Go', :ram => '4 Go', :processorfrequency => '1,3', :materialtype => type2
feature7 = Technicalfeature.create :os => 'Windows', :name => 'Toshiba Satellite', :version => '8', :memory => '500 Go', :ram => '4 Go', :processorfrequency => 'Non-connue', :materialtype => type2

feature8 = Technicalfeature.create :os => 'Android', :name => 'Samsung Galaxy S3', :version => '4.1', :memory => '16 Go', :ram => '1 Go', :processorfrequency => 'Non-connue', :materialtype => type3
feature9 = Technicalfeature.create :os => 'iOS', :name => 'iPhone 4S', :version => '7.0.4', :memory => '8 Go', :ram => '1 Go', :processorfrequency => 'Non-connue', :materialtype => type3
feature10 = Technicalfeature.create :os => 'Windows', :name => 'Nokia Lumia 520', :version => '8', :memory => '8 Go', :ram => '1 Go', :processorfrequency => 'Non-connue', :materialtype => type3

####################


# Table materials

(0..6).each do |i|
	Material.create :serialnumber => 'JHFUER879GAA0'+i.to_s(), :guaranteeend => Date.new(2014, 01, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature1
end

(0..4).each do |i|
  Material.create :serialnumber => 'JHFUER879GAB0'+i.to_s(), :guaranteeend => Date.new(2014, 02, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature2
end

(0..4).each do |i|
  Material.create :serialnumber => 'JHFUER879GAC0'+i.to_s(), :guaranteeend => Date.new(2014, 03, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature3
end

(0..3).each do |i|
  Material.create :serialnumber => 'JHFUER879GAD0'+i.to_s(), :guaranteeend => Date.new(2014, 04, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature4
end



(0..3).each do |i|
  Material.create :serialnumber => 'JHFUER879GBA0'+i.to_s(), :guaranteeend => Date.new(2013, 05, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature5
end

(0..3).each do |i|
  Material.create :serialnumber => 'JHFUER879GBB0'+i.to_s(), :guaranteeend => Date.new(2013, 06, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature6
end

(0..3).each do |i|
  Material.create :serialnumber => 'JHFUER879GBC0'+i.to_s(), :guaranteeend => Date.new(2013, 07, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature7
end



(0..5).each do |i|
  Material.create :serialnumber => 'JHFUER879GCA0'+i.to_s(), :guaranteeend => Date.new(2012, 05, 13), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature8
end

(0..5).each do |i|
  Material.create :serialnumber => 'JHFUER879GCB0'+i.to_s(), :guaranteeend => Date.new(2012, 07, 24), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature9
end

(0..3).each do |i|
  Material.create :serialnumber => 'JHFUER879GCC0'+i.to_s(), :guaranteeend => Date.new(2012, 10, 26), :anomaly => 'Aucune', :whobought => 'Polytech Nice', :technicalfeature => feature10
end

####################


# Table complexdatetypes

compldatetype1 = Complexdatetype.create :label => 'RDV'
compldatetype1.save

compldatetype2 = Complexdatetype.create :label => 'Emprunt'
compldatetype2.save

####################


# Table requeststatuses

reqstat1 = Requeststatus.create :label => 'En attente'
reqstat1.save

reqstat2 = Requeststatus.create :label => 'Terminee'
reqstat2.save

reqstat3 = Requeststatus.create :label => 'Refusee'
reqstat3.save

reqstat4 = Requeststatus.create :label => 'Validee'
reqstat4.save

reqstat5 = Requeststatus.create :label => 'En cours'
reqstat5.save

####################


# Table requests

req1 = Request.create :borrowmotive => 'Cours', :user => romain, :requeststatus => reqstat1

compldate1 = Complexdate.create :cdate => Date.new(2014, 01, 26), :beginhour => Time.now, :endhour => Time.now, :precisehour => Time.now, :request => req1, :complexdatetype => compldatetype1

