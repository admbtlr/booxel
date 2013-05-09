# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130508152417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "teaser"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",              precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "publication_date"
    t.string   "isbn"
    t.string   "editor"
    t.string   "translator"
    t.integer  "page_count"
    t.string   "page_count_edition"
    t.text     "blurbs"
    t.integer  "prominence"
    t.text     "contents"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "device_type"
    t.string   "cc_number"
    t.date     "cc_exp_date"
    t.integer  "cc_cvc"
    t.boolean  "save_cc_details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "kindle_email"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0
    t.integer  "attempts",   default: 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "line_items", force: true do |t|
    t.integer  "book_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  add_index "line_items", ["book_id"], name: "index_line_items_on_book_id"
  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
    t.integer  "customer_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
