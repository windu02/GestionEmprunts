class CreateComplexdates < ActiveRecord::Migration
  def change
    create_table :complexdates do |t|

      t.timestamps
    end
  end
end
