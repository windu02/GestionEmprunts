class CreateMaterialgroups < ActiveRecord::Migration
  def change
    create_table :materialgroups do |t|
      t.string :label
      t.string :site

      t.timestamps
    end
  end
end
