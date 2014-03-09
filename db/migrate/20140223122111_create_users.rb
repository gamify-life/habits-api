class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :facebook_id
      t.string :facebook_username
      t.string :facebook_access_token
      t.timestamps
    end
  end
end
