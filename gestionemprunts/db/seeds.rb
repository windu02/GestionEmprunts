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

