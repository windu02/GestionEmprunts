class AddBorrowmotiveAndRefusalmotiveToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :borrowmotive, :string
    add_column :requests, :refusalmotive, :string
  end
end
