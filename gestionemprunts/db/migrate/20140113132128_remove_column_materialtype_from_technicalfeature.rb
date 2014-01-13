class RemoveColumnMaterialtypeFromTechnicalfeature < ActiveRecord::Migration
  def up
    remove_column :technicalfeatures, :materialtype
  end
  
  def down
    add_column :technicalfeatures, :materialtype, :integer
  end
end
