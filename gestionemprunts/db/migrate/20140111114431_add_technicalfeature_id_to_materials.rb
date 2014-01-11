class AddTechnicalfeatureIdToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :technicalfeature_id, :integer
  end
end
