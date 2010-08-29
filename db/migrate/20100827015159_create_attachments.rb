class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.string :title
      t.integer :product_id
      t.string :link
      t.text :tags
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :attachments
  end
end
