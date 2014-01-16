class CreateTechnicalfeaturequantities < ActiveRecord::Migration
  def change
    create_table :technicalfeaturequantities do |t|
      t.integer :borrowablequantity
      t.timestamps
    end
  end
end
