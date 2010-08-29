# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100827015159) do

  create_table "attachments", :force => true do |t|
    t.string   "title"
    t.integer  "product_id"
    t.string   "link"
    t.text     "tags"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", :force => true do |t|
    t.integer  "product_id"
    t.integer  "vendor_id"
    t.string   "vpart_number"
    t.decimal  "quote_price"
    t.string   "units"
    t.string   "quote_info"
    t.datetime "expire_date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "description"
    t.string   "manufacturer"
    t.string   "model_number"
    t.string   "part_number"
    t.decimal  "list_price"
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.text     "note"
    t.integer  "obsolete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_line_items", :force => true do |t|
    t.integer  "project_id"
    t.integer  "product_id"
    t.decimal  "quantity"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.text     "note"
    t.integer  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "company_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "website"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "tags"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
