class AddShopOwnerId < ActiveRecord::Migration[5.0]
  def change
    add_reference :shops, :owner, foreign_key: true
  end
end
