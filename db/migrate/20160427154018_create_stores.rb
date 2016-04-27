class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :county
      t.string :street
      t.string :country_code_type
      t.string :ebay_website
      t.string :postal_code
      t.integer :category_mapping
      t.integer :category_prefill
      t.string :currency_code
      t.string :item_location
      t.integer :dispatch_time     
      t.integer :optimal_picturesize
      t.integer :out_of_stock_control
      t.integer :get_it_fast
      t.integer :include_prefilled
      t.string :shipping_profile
      t.string :return_profile
      t.string :payment_profile
      t.string :shipping_service
      t.integer :shippingservice_priority
      t.float :shippingservice_cost
      t.float :shippingservice_additionalcost
      t.integer :user_id, index: true
      t.integer :listing_duration_id, index: true
      t.integer :listing_type_id, index: true
      t.integer :condition_type_id, index: true
      t.timestamps
    end
  end
end
