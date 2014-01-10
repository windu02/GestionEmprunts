class RemoveColumnOsFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :os
  end
  
  def down
    add_column :materials, :os, :string
  end
end
