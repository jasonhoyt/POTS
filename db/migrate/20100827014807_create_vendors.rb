class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :company_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :website
      t.string :company_phone
      t.string :company_fax
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.text :tags
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
