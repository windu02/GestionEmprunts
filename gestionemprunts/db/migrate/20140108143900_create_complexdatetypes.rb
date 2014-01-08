class CreateComplexdatetypes < ActiveRecord::Migration
  def change
    create_table :complexdatetypes do |t|
      t.string :label

      t.timestamps
    end
  end
end
