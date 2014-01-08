class CreateMaterialstatuses < ActiveRecord::Migration
  def change
    create_table :materialstatuses do |t|
      t.string :label

      t.timestamps
    end
  end
end
