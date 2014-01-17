class AddLabelToPrivileges < ActiveRecord::Migration
  def change
    add_column :privileges, :label, :string
  end
end
