class CreateCartlistmaterials < ActiveRecord::Migration
  def change
    create_table :cartlistmaterials do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
