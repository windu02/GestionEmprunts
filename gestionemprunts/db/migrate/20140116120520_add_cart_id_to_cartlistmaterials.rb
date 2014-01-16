class AddCartIdToCartlistmaterials < ActiveRecord::Migration
  def change
    add_column :cartlistmaterials, :cart_id, :integer
  end
end
