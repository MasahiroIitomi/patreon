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

ActiveRecord::Schema.define(version: 20171223083848) do

  create_table "creators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "creating_things",               null: false
    t.string   "is_or_are"
    t.string   "cover_image"
    t.integer  "genre"
    t.integer  "adult_content"
    t.integer  "reward_id"
    t.integer  "earning_privacy"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "creator_about",   limit: 65535
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.integer  "type"
    t.string   "title"
    t.text     "body",             limit: 65535
    t.integer  "public_or_patron"
    t.integer  "rewards_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name"
    t.text     "mypage_url",             limit: 65535
    t.text     "about_user",             limit: 65535
    t.string   "location"
    t.string   "avatar_image"
    t.integer  "pledge_privacy"
    t.text     "twitter_url",            limit: 65535
    t.text     "facebook_url",           limit: 65535
    t.text     "youtube_url",            limit: 65535
    t.text     "twitch_url",             limit: 65535
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
