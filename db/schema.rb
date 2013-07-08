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

ActiveRecord::Schema.define(:version => 20130114182056) do

  create_table "access_levels", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "ended_on"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "short_name"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "emergency_contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email_address"
    t.integer  "member_id"
    t.datetime "ended_on"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "client_id"
  end

  add_index "emergency_contacts", ["client_id"], :name => "index_emergency_contacts_on_client_id"
  add_index "emergency_contacts", ["member_id"], :name => "index_emergency_contacts_on_member_id"

  create_table "equipment_items", :force => true do |t|
    t.string   "condition"
    t.integer  "equipment_type_id"
    t.datetime "ended_on"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "client_id"
  end

  add_index "equipment_items", ["client_id"], :name => "index_equipment_items_on_client_id"
  add_index "equipment_items", ["equipment_type_id"], :name => "index_equipment_items_on_equipment_type_id"

  create_table "equipment_loans", :force => true do |t|
    t.integer  "participation_id"
    t.integer  "equipment_item_id"
    t.datetime "ended_on"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "client_id"
  end

  add_index "equipment_loans", ["client_id"], :name => "index_equipment_loans_on_client_id"
  add_index "equipment_loans", ["equipment_item_id"], :name => "index_equipment_loans_on_equipment_item_id"
  add_index "equipment_loans", ["participation_id"], :name => "index_equipment_loans_on_participation_id"

  create_table "equipment_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "manufacturer_id"
    t.datetime "ended_on"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "client_id"
  end

  add_index "equipment_types", ["client_id"], :name => "index_equipment_types_on_client_id"
  add_index "equipment_types", ["manufacturer_id"], :name => "index_equipment_types_on_manufacturer_id"

  create_table "examples", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "decimal_field"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "game_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "ended_on"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "client_id"
  end

  add_index "game_types", ["client_id"], :name => "index_game_types_on_client_id"

  create_table "games", :force => true do |t|
    t.integer  "game_type_id"
    t.integer  "location_id"
    t.datetime "ended_on"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "client_id"
  end

  add_index "games", ["client_id"], :name => "index_games_on_client_id"
  add_index "games", ["game_type_id"], :name => "index_games_on_game_type_id"
  add_index "games", ["location_id"], :name => "index_games_on_location_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "street_address"
    t.datetime "ended_on"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "client_id"
  end

  add_index "locations", ["client_id"], :name => "index_locations_on_client_id"

  create_table "logins", :force => true do |t|
    t.string   "username"
    t.string   "ip_address"
    t.boolean  "success"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "password"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "website"
    t.datetime "ended_on"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "client_id"
  end

  add_index "manufacturers", ["client_id"], :name => "index_manufacturers_on_client_id"

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email_address"
    t.decimal  "balance"
    t.datetime "ended_on"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "client_id"
  end

  add_index "members", ["client_id"], :name => "index_members_on_client_id"

  create_table "participations", :force => true do |t|
    t.integer  "game_id"
    t.integer  "role_id"
    t.integer  "team_id"
    t.datetime "ended_on"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "client_id"
  end

  add_index "participations", ["client_id"], :name => "index_participations_on_client_id"
  add_index "participations", ["game_id"], :name => "index_participations_on_game_id"
  add_index "participations", ["role_id"], :name => "index_participations_on_role_id"
  add_index "participations", ["team_id"], :name => "index_participations_on_team_id"

  create_table "role_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "ended_on"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "client_id"
  end

  add_index "role_types", ["client_id"], :name => "index_role_types_on_client_id"

  create_table "roles", :force => true do |t|
    t.integer  "member_id"
    t.integer  "role_type_id"
    t.datetime "ended_on"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "client_id"
  end

  add_index "roles", ["client_id"], :name => "index_roles_on_client_id"
  add_index "roles", ["member_id"], :name => "index_roles_on_member_id"
  add_index "roles", ["role_type_id"], :name => "index_roles_on_role_type_id"

  create_table "team_memberships", :force => true do |t|
    t.integer  "team_id"
    t.integer  "role_id"
    t.datetime "ended_on"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "client_id"
  end

  add_index "team_memberships", ["client_id"], :name => "index_team_memberships_on_client_id"
  add_index "team_memberships", ["role_id"], :name => "index_team_memberships_on_role_id"
  add_index "team_memberships", ["team_id"], :name => "index_team_memberships_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "ended_on"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "client_id"
  end

  add_index "teams", ["client_id"], :name => "index_teams_on_client_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.integer  "client_id"
    t.integer  "access_level_id"
    t.datetime "ended_on"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "username"
    t.string   "password_hash"
  end

  add_index "users", ["access_level_id"], :name => "index_users_on_access_level_id"
  add_index "users", ["client_id"], :name => "index_users_on_client_id"
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "wages", :force => true do |t|
    t.decimal  "amount"
    t.integer  "game_type_id"
    t.integer  "role_type_id"
    t.datetime "ended_on"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "client_id"
  end

  add_index "wages", ["client_id"], :name => "index_wages_on_client_id"
  add_index "wages", ["game_type_id"], :name => "index_wages_on_game_type_id"
  add_index "wages", ["role_type_id"], :name => "index_wages_on_role_type_id"

end
