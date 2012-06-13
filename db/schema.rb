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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120604030951) do

  create_table "areas", :force => true do |t|
    t.integer "city_id"
    t.string  "name"
  end

  add_index "areas", ["city_id"], :name => "index_areas_on_city_id"

  create_table "cities", :force => true do |t|
    t.integer "state_id"
    t.string  "name"
  end

  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "qualifications", :force => true do |t|
    t.string "name", :limit => 15
  end

  create_table "qualifications_users", :id => false, :force => true do |t|
    t.integer "qualification_id"
    t.integer "user_id"
  end

  add_index "qualifications_users", ["qualification_id", "user_id"], :name => "index_qualifications_users_on_qualification_id_and_user_id"

  create_table "states", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "title_gender",    :limit => 2
    t.string   "first_name",      :limit => 30
    t.string   "last_name",       :limit => 30
    t.string   "email",           :limit => 100
    t.string   "hashed_password", :limit => 50
    t.string   "salt",            :limit => 50
    t.string   "user_type",       :limit => 15
    t.string   "job_title",       :limit => 3
    t.string   "assigned_to",     :limit => 4
    t.integer  "block",           :limit => 1,   :default => 1
    t.integer  "telephone"
    t.integer  "mobile_phone"
    t.date     "date_of_birth"
    t.date     "wedding_date"
    t.datetime "last_accessed"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

end
