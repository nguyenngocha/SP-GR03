class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :content
      t.int :price
      t.int :numbers
      t.string :category

      t.timestamps
    end
  end
end
