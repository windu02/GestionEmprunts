class AddMaterialgroupIdToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :materialgroup_id, :integer
  end
end
