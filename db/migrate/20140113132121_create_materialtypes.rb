class CreateMaterialtypes < ActiveRecord::Migration
  def change
    create_table :materialtypes do |t|
      t.string :label

      t.timestamps
    end
  end
end
