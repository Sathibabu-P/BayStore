class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category_id
      t.float :price
      t.integer :qty
      t.string :brand
      t.string :description
      t.integer :store_id,index: true
      t.timestamps
    end
  end
end
