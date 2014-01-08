class AddRequeststatusIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :requeststatus_id, :integer
  end
end
