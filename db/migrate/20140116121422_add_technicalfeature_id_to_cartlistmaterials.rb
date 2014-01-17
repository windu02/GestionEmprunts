class AddTechnicalfeatureIdToCartlistmaterials < ActiveRecord::Migration
  def change
    add_column :cartlistmaterials, :technicalfeature_id, :integer
  end
end
