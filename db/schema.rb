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

ActiveRecord::Schema.define(:version => 20120519042540) do

  create_table "lenders", :force => true do |t|
    t.integer  "sniff_id"
    t.string   "name"
    t.string   "url_code"
    t.string   "link"
    t.string   "lender_type"
    t.string   "image_file"
    t.decimal  "ranking",                        :precision => 3, :scale => 1
    t.string   "first_comment"
    t.string   "second_comment"
    t.string   "third_comment"
    t.string   "since",             :limit => 4
    t.string   "governing_law"
    t.boolean  "BBB_accredit"
    t.string   "BBB_score",         :limit => 4
    t.integer  "BBB_complaints"
    t.integer  "BBB_unresponded"
    t.string   "max_loan"
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
    t.decimal  "loan_amt",                       :precision => 6, :scale => 2
    t.decimal  "payments",                       :precision => 4, :scale => 1
    t.decimal  "pmt_freq_in_days",               :precision => 5, :scale => 1
    t.decimal  "pmt_amt",                        :precision => 7, :scale => 2
    t.decimal  "cost",                           :precision => 7, :scale => 2
    t.decimal  "apr",                            :precision => 3, :scale => 2
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
  end

  add_index "lenders", ["sniff_id"], :name => "index_lenders_on_sniff_id"

  create_table "lenders_states", :id => false, :force => true do |t|
    t.integer "lender_id"
    t.integer "state_id"
  end

  add_index "lenders_states", ["lender_id", "state_id"], :name => "index_lenders_states_on_lender_id_and_state_id"

  create_table "sniffs", :force => true do |t|
    t.string   "sniff_desc", :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "state_abbr", :limit => 2
    t.string   "state",      :limit => 15
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
