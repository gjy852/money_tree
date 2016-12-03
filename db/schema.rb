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

ActiveRecord::Schema.define(version: 20161116225528) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "assets", force: :cascade do |t|
    t.integer  "stocks_and_stock_funds"
    t.string   "cash"
    t.integer  "retirement_account"
    t.integer  "real_estate"
    t.integer  "asset_total"
    t.string   "bonds"
    t.string   "health_savings_account"
    t.string   "asset_detailed_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liabilities", force: :cascade do |t|
    t.integer  "mortgage"
    t.integer  "student_loan"
    t.integer  "credit_cards"
    t.string   "liabilities_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "net_worths", force: :cascade do |t|
    t.integer  "asset_total_id"
    t.integer  "liabilities_total_id"
    t.string   "calculated_net_worth"
    t.integer  "user_id"
    t.string   "net_worth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "retirement_assumptions", force: :cascade do |t|
    t.integer  "age_id"
    t.integer  "last_year_saving_id"
    t.integer  "investment_return"
    t.string   "inflation"
    t.string   "increase_in_savings"
    t.string   "annual_savings"
    t.string   "initial_savings"
    t.string   "retirement_income"
    t.string   "retirement_age"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "retirement_calculations", force: :cascade do |t|
    t.integer  "assumptions_id"
    t.string   "calculation_by_month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "age"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "individual_net_worth"
    t.string   "individual_retirement_goal"
    t.integer  "annual_savings"
    t.string   "current_income"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
