class CreateCartdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :cartdetails do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :amount

      t.timestamps
    end
  end
end
