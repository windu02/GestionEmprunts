class RemoveColumnMemoryFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :memory
  end
  
  def down
    add_column :materials, :memory, :integer
  end
end