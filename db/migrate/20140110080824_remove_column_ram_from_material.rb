class RemoveColumnRamFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :ram
  end
  
  def down
    add_column :materials, :ram, :integer
  end
end
