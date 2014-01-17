class CreateTechnicalfeatures < ActiveRecord::Migration
  def change
    create_table :technicalfeatures do |t|
      t.string :materialtype
      t.string :os
      t.string :name
      t.string :version
      t.integer :memory
      t.integer :ram
      t.float :processorfrequency

      t.timestamps
    end
  end
end
