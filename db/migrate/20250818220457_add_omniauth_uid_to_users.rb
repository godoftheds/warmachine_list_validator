class AddOmniauthUidToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :omniauth_uid, :string
    add_column :users, :omniauth_provider, :string
    add_index :users, :omniauth_uid
  end
end
