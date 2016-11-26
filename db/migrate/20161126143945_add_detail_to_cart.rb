class AddDetailToCart < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :user_id, :integer
    add_column :carts, :cart_details_id, :integer
  end
end
