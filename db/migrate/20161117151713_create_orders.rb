class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.int :payment

      t.timestamps
    end
  end
end
