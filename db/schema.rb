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

ActiveRecord::Schema.define(version: 20130917105209) do

  create_table "investments", force: true do |t|
    t.float    "square_feet",            default: 0.0
    t.float    "cost_of_property",       default: 0.0
    t.float    "sale_value_of_property", default: 0.0
    t.float    "return_of_investment",   default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
