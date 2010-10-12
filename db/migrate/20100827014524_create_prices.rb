class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.integer :product_id
      t.integer :vendor_id
      t.string :vpart_number
      t.decimal :quote_price, :scale => 3
      t.string :units
      t.string :quote_info
      t.datetime :expire_date
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
