class ChangeOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :shop_id, :integer
  end
end
