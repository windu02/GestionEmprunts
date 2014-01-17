class AddMaterialstatusIdToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :materialstatus_id, :integer
  end
end
