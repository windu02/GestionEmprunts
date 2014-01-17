class CreateUsersMaterialgroups < ActiveRecord::Migration
  def change
    create_table :users_materialgroups, :id=>false do |t|
		t.references :user
		t.references :materialgroup
    end
  end
end
