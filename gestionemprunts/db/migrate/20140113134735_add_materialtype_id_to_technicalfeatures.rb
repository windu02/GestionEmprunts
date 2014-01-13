class AddMaterialtypeIdToTechnicalfeatures < ActiveRecord::Migration
  def change
    add_column :technicalfeatures, :materialtype, :integer
  end
end
