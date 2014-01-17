class RemoveColumnProcessorfrequencyFromMaterial < ActiveRecord::Migration
  def up
    remove_column :materials, :processorfrequency
  end
  
  def down
    add_column :materials, :processorfrequency, :float
  end
end
