# Clear the database
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

admin_privilege = Privilege.create :label => 'Admin'

romain = User.create :firstname => 'Romain', :lastname => 'Roufast', :email => 'romain@gmail.com', :password => 'secret' , :privilege => admin_privilege
alexis = User.create :firstname => 'Alexis', :lastname => 'Laurent', :email => 'alexis@gmail.com', :password => 'secret' , :privilege => admin_privilege

type1 = Materialtype.create :label=>'Tablette tactile'
type1.save

type2 = Materialtype.create :label=>'Ordinateur'
type2.save

feature1 = Technicalfeature.create :os => 'Android', :name => 'Acer', :version => '2.4', :memory => '250', :ram => '8', :processorfrequency => '2.4', :materialtype => type1
mat1 = Material.create :serialnumber => 'JHFUER879GEDFE', :guaranteeend => Date.today, :anomaly => 'Aucune', :whobought => 'Nobody', :technicalfeature => feature1
mat1.save

compldatetype1 = Complexdatetype.create :label => 'RDV'
compldatetype1.save

compldatetype2 = Complexdatetype.create :label => 'Emprunt'
compldatetype2.save

reqstat1 = Requeststatus.create :label => 'Attente'
reqstat1.save

reqstat2 = Requeststatus.create :label => 'Terminee'
reqstat2.save

req1 = Request.create :borrowmotive => 'Cours', :user => romain, :requeststatus => reqstat1

compldate1 = Complexdate.create :cdate => Date.new(2014, 01, 26), :beginhour => Time.now, :endhour => Time.now, :precisehour => Time.now, :request => req1, :complexdatetype => compldatetype1

