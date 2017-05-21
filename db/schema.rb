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

ActiveRecord::Schema.define(version: 20170521132315) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "department"
    t.string "photo"
    t.integer "eau_tasks_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eau_tasks_id"], name: "index_authors_on_eau_tasks_id"
  end

  create_table "eau_tasks", force: :cascade do |t|
    t.string "name"
    t.date "date_start"
    t.date "date_end"
    t.integer "id_task_temp"
    t.integer "author_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_eau_tasks_on_author_id"
    t.index ["user_id"], name: "index_eau_tasks_on_user_id"
  end

  create_table "tasks_temps", force: :cascade do |t|
    t.string "name"
    t.date "date_start"
    t.date "date_end"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temp_tasks", force: :cascade do |t|
    t.string "name"
    t.date "date_start"
    t.date "date_end"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.date "date_finish"
    t.integer "id_temp_tasks"
    t.integer "quan_u"
    t.integer "quan_f"
    t.text "comment"
    t.integer "inn"
    t.integer "ogrn"
    t.integer "id_eau_tasks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "region"
    t.integer "eau_tasks_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["eau_tasks_id"], name: "index_users_on_eau_tasks_id"
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
