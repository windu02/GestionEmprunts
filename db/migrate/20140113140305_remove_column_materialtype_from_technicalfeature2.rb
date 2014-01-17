class RemoveColumnMaterialtypeFromTechnicalfeature2 < ActiveRecord::Migration
  def up
    remove_column :technicalfeatures, :materialtype
  end
  
  def down
    add_column :technicalfeatures, :materialtype, :string
  end
end
