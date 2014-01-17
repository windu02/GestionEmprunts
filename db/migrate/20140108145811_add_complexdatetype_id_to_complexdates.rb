class AddComplexdatetypeIdToComplexdates < ActiveRecord::Migration
  def change
    add_column :complexdates, :complexdatetype_id, :integer
  end
end
