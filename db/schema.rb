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

ActiveRecord::Schema.define(version: 20190915034249) do

  create_table "administrators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", null: false
    t.string "email_for_index", null: false
    t.string "hashed_password"
    t.date "start_date", null: false
    t.date "end_date"
    t.boolean "suspended", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prefecture"
    t.string "send_code"
    t.index ["email_for_index"], name: "index_administrators_on_email_for_index", unique: true
  end

  create_table "client_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.index ["client_id", "created_at"], name: "index_client_events_on_client_id_and_created_at"
    t.index ["client_id"], name: "index_client_events_on_client_id"
    t.index ["created_at"], name: "index_client_events_on_created_at"
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "company_name", null: false
    t.string "company_name_kana", null: false
    t.string "representative", null: false
    t.string "representative_kana", null: false
    t.string "certification", default: "", null: false
    t.string "postal_code1", default: "", null: false
    t.string "postal_code2", default: "", null: false
    t.string "prefecture", default: "選択してください", null: false
    t.string "city", default: "", null: false
    t.string "sales", default: "", null: false
    t.string "address1", default: "", null: false
    t.string "address2"
    t.string "phone1", default: "", null: false
    t.string "phone2", default: "", null: false
    t.string "phone3", default: "", null: false
    t.string "email", null: false
    t.string "email_for_index", null: false
    t.string "hashed_password"
    t.integer "prefecture_cord"
    t.integer "contract_renewal1", default: 1, null: false
    t.integer "contract_renewal2", default: 1, null: false
    t.integer "contract_renewal3", default: 1, null: false
    t.integer "contract_renewal4", default: 1, null: false
    t.integer "contract_renewal5", default: 1, null: false
    t.integer "contract_renewal6", default: 1, null: false
    t.integer "contract_renewal7", default: 1, null: false
    t.integer "contract_renewal8", default: 1, null: false
    t.integer "contract_renewal9", default: 1, null: false
    t.integer "contract_renewal10", default: 1, null: false
    t.integer "contract_renewal11", default: 1, null: false
    t.integer "contract_renewal12", default: 1, null: false
    t.string "operation_status", default: "電話で確認", null: false
    t.integer "status_no", default: 9, null: false
    t.integer "update_no", default: 2, null: false
    t.string "agreement1", default: "無効", null: false
    t.string "agreement2", default: "無効", null: false
    t.string "agreement3", default: "無効", null: false
    t.string "agreement4", default: "無効", null: false
    t.string "agreement5", default: "無効", null: false
    t.string "agreement6", default: "無効", null: false
    t.string "agreement7", default: "無効", null: false
    t.string "agreement8", default: "無効", null: false
    t.string "agreement9", default: "無効", null: false
    t.string "agreement10", default: "無効", null: false
    t.string "agreement11", default: "無効", null: false
    t.string "agreement12", default: "無効", null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.boolean "suspended", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification"], name: "index_clients_on_certification"
    t.index ["company_name"], name: "index_clients_on_company_name"
    t.index ["company_name_kana"], name: "index_clients_on_company_name_kana"
    t.index ["email_for_index"], name: "index_clients_on_email_for_index", unique: true
    t.index ["operation_status"], name: "index_clients_on_operation_status"
    t.index ["prefecture", "company_name_kana"], name: "index_clients_on_prefecture_and_company_name_kana"
    t.index ["prefecture_cord"], name: "index_clients_on_prefecture_cord"
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id", null: false
    t.string "body", default: "ご利用有り難うございます。お客様と、お車を安全に送迎いたします。", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_entries_on_client_id"
  end

  create_table "requests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "prefecture", default: "選択", null: false
    t.string "city", default: "選択", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city"], name: "index_requests_on_city"
    t.index ["prefecture"], name: "index_requests_on_prefecture"
  end

  add_foreign_key "client_events", "clients"
end
