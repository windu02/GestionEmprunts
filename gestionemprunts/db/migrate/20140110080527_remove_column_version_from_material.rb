class RemoveColumnVersionFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :version
  end
  
  def down
    add_column :materials, :version, :string
  end
end
