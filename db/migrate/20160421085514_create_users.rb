class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :auth
      t.string :provider
      t.string :uid
      t.string :email
      t.string :name   
      t.string :avatar_url
      t.boolean :admin, default: false
      t.boolean :blocked, default: true
      t.boolean :can_create_stores, default: true
      t.integer :state, default: 0
      t.timestamps
    end
  end
end
