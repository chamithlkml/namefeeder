class AddJtiToMerchantUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :merchant_users, :jti, :string, null: false
    add_index :merchant_users, :jti, unique: true
  end
end
