class CreateProjectLineItems < ActiveRecord::Migration
  def self.up
    create_table :project_line_items do |t|
      t.integer :project_id
      t.integer :product_id
      t.decimal :quantity
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :project_line_items
  end
end
