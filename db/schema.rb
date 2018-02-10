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

ActiveRecord::Schema.define(version: 20180209125541) do

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.string "role"
    t.string "sponsor"
    t.text "body"
    t.integer "output_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["output_id"], name: "index_comments_on_output_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "media_file_name"
    t.string "media_content_type"
    t.integer "media_file_size"
    t.datetime "media_updated_at"
  end

  create_table "fileviews", force: :cascade do |t|
    t.string "filename"
    t.string "extension"
    t.string "filepath"
    t.integer "output_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["output_id"], name: "index_fileviews_on_output_id"
  end

  create_table "outputs", force: :cascade do |t|
    t.text "title"
    t.string "number"
    t.string "TFL"
    t.text "footnote"
    t.string "population"
    t.string "domain"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "program_name"
    t.string "output_file_name"
  end

end
