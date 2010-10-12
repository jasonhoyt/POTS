class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :description
      t.string :manufacturer
      t.string :model_number
      t.string :part_number
      t.decimal :list_price, :scale => 3
      t.integer :category_id
      t.integer :vendor_id
      t.text :note
      t.integer :obsolete

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
