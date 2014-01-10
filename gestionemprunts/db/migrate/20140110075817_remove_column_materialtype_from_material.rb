class RemoveColumnMaterialtypeFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :materialtype
  end
  
  def down
    add_column :materials, :materialtype, :string
  end
end
