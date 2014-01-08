class AddRequestIdToComplexdates < ActiveRecord::Migration
  def change
    add_column :complexdates, :request_id, :integer
  end
end
