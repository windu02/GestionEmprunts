class AddMaterialtypeIdToTechnicalfeatures < ActiveRecord::Migration
  def change
    add_column :technicalfeatures, :materialtype_id, :integer
  end
end
