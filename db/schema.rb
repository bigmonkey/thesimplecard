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

ActiveRecord::Schema.define(version: 20140514071909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lenders", force: true do |t|
    t.integer  "sniff_id"
    t.string   "name",              limit: 45
    t.string   "lender_type",       limit: 45
    t.string   "image_file"
    t.decimal  "ranking",                      precision: 3, scale: 1
    t.string   "first_comment"
    t.string   "second_comment"
    t.string   "third_comment"
    t.string   "since",             limit: 4
    t.string   "governing_law",     limit: 45
    t.boolean  "BBB_accredit"
    t.string   "BBB_score",         limit: 4
    t.integer  "BBB_complaints"
    t.integer  "BBB_unresponded"
    t.string   "max_loan",          limit: 45
    t.boolean  "spanish"
    t.boolean  "state_lic"
    t.boolean  "privacy_policy"
    t.boolean  "https"
    t.boolean  "phone_contact"
    t.boolean  "live_chat"
    t.boolean  "time_at_residence"
    t.boolean  "rent_or_own"
    t.boolean  "rent_mort_amt"
    t.boolean  "time_w_employer"
    t.boolean  "reference"
    t.decimal  "loan_amt",                     precision: 6, scale: 2
    t.decimal  "payments",                     precision: 4, scale: 1
    t.decimal  "pmt_freq_in_days",             precision: 5, scale: 1
    t.decimal  "pmt_amt",                      precision: 7, scale: 2
    t.decimal  "cost",                         precision: 7, scale: 2
    t.decimal  "apr",                          precision: 3, scale: 2
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "review_url"
    t.integer  "partner_id"
  end

  add_index "lenders", ["sniff_id"], name: "index_lenders_on_sniff_id", using: :btree

  create_table "lenders_states", id: false, force: true do |t|
    t.integer "lender_id"
    t.integer "state_id"
  end

  add_index "lenders_states", ["lender_id", "state_id"], name: "index_lenders_states_on_lender_id_and_state_id", using: :btree

  create_table "lenders_term_states", id: false, force: true do |t|
    t.integer "lender_id"
    t.integer "term_state_id"
  end

  add_index "lenders_term_states", ["lender_id", "term_state_id"], name: "index_lenders_term_states_on_lender_id_and_term_state_id", using: :btree

  create_table "my_cards", force: true do |t|
    t.integer  "user_id"
    t.string   "card_name"
    t.decimal  "annual_fee",      precision: 5, scale: 2
    t.decimal  "purchase_apr",    precision: 4, scale: 2
    t.decimal  "monthly_balance", precision: 7, scale: 2
    t.decimal  "credit_limit",    precision: 7, scale: 2
    t.decimal  "monthly_spend",   precision: 7, scale: 2
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "page_name",  limit: 50
    t.string   "page_code",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pages", ["page_code"], name: "index_pages_on_page_code", unique: true, using: :btree

  create_table "partners", force: true do |t|
    t.string   "lender_link"
    t.string   "lender_tail", limit: 25
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",        limit: 100
  end

  create_table "prepaids", force: true do |t|
    t.integer  "partner_id"
    t.string   "name",                    limit: 100
    t.string   "image_file",              limit: 100
    t.string   "card_name",               limit: 100
    t.decimal  "rating",                              precision: 3, scale: 1
    t.string   "credit_needed",           limit: 25
    t.string   "first_comment",           limit: 70
    t.string   "second_comment",          limit: 70
    t.string   "third_comment",           limit: 70
    t.decimal  "activation_fee",                      precision: 4, scale: 2
    t.decimal  "reduce_mth_fee_load_amt",             precision: 8, scale: 2
    t.decimal  "reduce_mth_fee",                      precision: 4, scale: 2
    t.decimal  "mth_fee_dep",                         precision: 4, scale: 2
    t.decimal  "mth_fee_no_dep",                      precision: 4, scale: 2
    t.decimal  "trans_fee_signature",                 precision: 4, scale: 2
    t.decimal  "atm_bal_fee",                         precision: 4, scale: 2
    t.decimal  "atm_out_net_fee",                     precision: 4, scale: 2
    t.decimal  "atm_in_net_fee_dep",                  precision: 4, scale: 2
    t.decimal  "atm_in_net_fee_no_dep",               precision: 4, scale: 2
    t.decimal  "load_fee",                            precision: 4, scale: 2
    t.decimal  "paper_statement",                     precision: 4, scale: 2
    t.decimal  "max_atm",                             precision: 8, scale: 2
    t.decimal  "max_bal",                             precision: 8, scale: 2
    t.decimal  "max_daily_spend",                     precision: 8, scale: 2
    t.decimal  "min_load",                            precision: 8, scale: 2
    t.decimal  "max_cash_deposit",                    precision: 8, scale: 2
    t.string   "bill_pay_elec",           limit: 70
    t.string   "bill_pay_paper",          limit: 70
    t.string   "online_acct",             limit: 20
    t.decimal  "call_fee_dep",                        precision: 4, scale: 2
    t.decimal  "call_fee_no_dep",                     precision: 4, scale: 2
    t.decimal  "free_calls",                          precision: 4, scale: 2
    t.string   "call_center_desc",        limit: 100
    t.text     "bullets"
    t.string   "issuer",                  limit: 100
    t.decimal  "payout",                              precision: 4, scale: 2
    t.boolean  "live"
    t.integer  "card_syn_id"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  create_table "secureds", force: true do |t|
    t.string   "name",           limit: 70
    t.string   "image_file",     limit: 100
    t.decimal  "rating",                     precision: 3, scale: 1
    t.string   "first_comment",  limit: 70
    t.string   "second_comment", limit: 70
    t.string   "third_comment",  limit: 70
    t.decimal  "purchase_apr",               precision: 4, scale: 2
    t.decimal  "annual_fee",                 precision: 5, scale: 2
    t.decimal  "monthly_fee",                precision: 4, scale: 2
    t.decimal  "cost",                       precision: 7, scale: 2
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "partner_id"
    t.boolean  "inst_decision"
    t.string   "card_name"
    t.text     "bullets"
    t.string   "issuer",         limit: 100
    t.string   "card_type",      limit: 50
    t.string   "purchase_base",  limit: 1
    t.decimal  "cash_apr",                   precision: 4, scale: 2
    t.string   "cash_base",      limit: 1
    t.string   "grace",          limit: 50
    t.string   "late_fee",       limit: 20
    t.string   "return_pmt",     limit: 20
    t.string   "overlimit_fee",  limit: 20
    t.string   "max_credit",     limit: 20
    t.string   "min_deposit",    limit: 20
    t.string   "credit_rating",  limit: 20
    t.boolean  "live"
  end

  create_table "sniffs", force: true do |t|
    t.string   "sniff_desc", limit: 5
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sources", force: true do |t|
    t.string   "src_code",   limit: 4
    t.string   "src_desc",   limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "sources", ["src_code"], name: "index_sources_on_src_code", unique: true, using: :btree

  create_table "states", force: true do |t|
    t.string   "state_abbr", limit: 2
    t.string   "state",      limit: 15
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "term_states", force: true do |t|
    t.string   "state_abbr", limit: 2
    t.string   "state",      limit: 15
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tracks", force: true do |t|
    t.string   "conversion_key", limit: 20
    t.string   "src_code",       limit: 4
    t.string   "page_code",      limit: 4
    t.string   "campaign",       limit: 128
    t.string   "ad_group"
    t.string   "kw",             limit: 80
    t.string   "creative",       limit: 25
    t.string   "placement"
    t.integer  "partner_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
