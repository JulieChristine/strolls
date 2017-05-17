class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.column :name, :string
      t.column :savings, :integer
      t.column :validity, :date

      t.timestamps
    end
  end
end
