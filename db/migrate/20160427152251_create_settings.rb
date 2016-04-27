class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :app_id
      t.string :dev_id
      t.string :cert_id
      t.string :run_name
      t.string :site_id
      t.string :user_token      
      t.text :store_id, index: true
      t.timestamps
    end
  end
end
