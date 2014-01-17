class CreateMaterialsRequests < ActiveRecord::Migration
  def change
    create_table :materials_requests, :id=>false do |t|
		t.references :material
		t.references :request
    end
  end
end
