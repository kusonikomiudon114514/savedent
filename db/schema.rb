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

ActiveRecord::Schema.define(version: 20191011054901) do

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mediations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memos", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.string "title"
    t.boolean "important"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "todohuken"
    t.string "localname1"
    t.string "localname2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendeds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reportjobs", force: :cascade do |t|
    t.integer "status"
    t.integer "user_id"
    t.date "day"
    t.string "syokusyu"
    t.string "zigyousyo"
    t.integer "mediation_id"
    t.string "syozaiti"
    t.string "shikennzyou"
    t.integer "zyukennsyasuu"
    t.boolean "ithizi_hikki"
    t.boolean "ithizi_tekisei"
    t.boolean "ithizi_sakubun"
    t.boolean "ithizi_mensetsu"
    t.integer "zikan_ithite"
    t.integer "zikan_ithihi"
    t.integer "zikan_ithime"
    t.integer "zikan_ithisa"
    t.boolean "nizi_hikki"
    t.boolean "nizi_tekisei"
    t.boolean "nizi_mennsetsu"
    t.integer "zikan_nihi"
    t.integer "zikan_nite"
    t.integer "zikan_nime"
    t.integer "zikan_nisa"
    t.integer "subject_id"
    t.integer "zikan_japanese"
    t.integer "zikan_math"
    t.integer "zikan_social"
    t.integer "zikan_english"
    t.integer "zikan_ippann"
    t.integer "zikan_tekisei"
    t.integer "interview_id"
    t.integer "iin"
    t.integer "zikan_mensetsu"
    t.text "shitsumon"
    t.text "mensetsusonota"
    t.string "sakubun"
    t.string "bunnsyouryou"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumetrancerecs", force: :cascade do |t|
    t.integer "resume_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rirekisyos", force: :cascade do |t|
    t.string "title"
    t.date "hizuke"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end