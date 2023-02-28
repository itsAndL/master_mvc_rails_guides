# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_28_073516) do
  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title", default: "My Supper Book"
    t.integer "pages", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "publisher"
    t.integer "author_id", null: false
    t.string "subtitle"
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["publisher"], name: "index_books_on_publisher"
  end

  create_table "join_books_to_their_author", id: false, force: :cascade do |t|
    t.integer "author_id"
    t.integer "book_id"
    t.index ["author_id", "book_id"], name: "index_join_books_to_their_author_on_author_id_and_book_id"
    t.index ["book_id", "author_id"], name: "index_join_books_to_their_author_on_book_id_and_author_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "your_wize"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "views", default: 45, null: false
    t.index ["logo"], name: "unique_motto", unique: true
  end

  add_foreign_key "books", "authors"
end
