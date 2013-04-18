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

ActiveRecord::Schema.define(:version => 20130418180134) do

  create_table "events", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.string   "street"
    t.string   "city"
    t.string   "postal_code"
    t.string   "website"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "attendees_count", :default => 0
    t.string   "slug"
    t.integer  "comments_count",  :default => 0
    t.integer  "api_id"
    t.string   "api_name"
  end

  add_index "events", ["slug"], :name => "index_events_on_slug", :unique => true
  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "jobs", :force => true do |t|
    t.string   "company"
    t.string   "url"
    t.string   "title"
    t.string   "city"
    t.string   "postal_code"
    t.text     "description"
    t.boolean  "freelance"
    t.boolean  "cdi"
    t.boolean  "cdd"
    t.boolean  "internship"
    t.boolean  "remote"
    t.boolean  "full_time"
    t.boolean  "part_time"
    t.integer  "views",       :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "street"
    t.string   "state",       :default => "pending"
    t.string   "logo_uid"
    t.string   "email"
    t.string   "token"
    t.string   "slug"
  end

  add_index "jobs", ["slug"], :name => "index_jobs_on_slug", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "github"
    t.string   "twitter"
    t.integer  "up_votes",                            :default => 0
    t.integer  "down_votes",                          :default => 0
    t.string   "role"
    t.string   "city"
    t.string   "street"
    t.string   "postal_code"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "slug"
    t.integer  "questions_count",                     :default => 0
    t.integer  "answers_count",                       :default => 0
    t.integer  "events_count",                        :default => 0
    t.string   "website"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true

end
