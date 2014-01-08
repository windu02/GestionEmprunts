class CreateRequeststatuses < ActiveRecord::Migration
  def change
    create_table :requeststatuses do |t|
      t.string :label

      t.timestamps
    end
  end
end
