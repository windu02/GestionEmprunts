class AddTechnicalfeatureIdToTechnicalfeaturequantities < ActiveRecord::Migration
  def change
    add_column :technicalfeaturequantities, :technicalfeature_id, :integer
  end
end
