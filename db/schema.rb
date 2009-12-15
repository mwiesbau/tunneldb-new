# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091215135540) do

  create_table "activities", :force => true do |t|
    t.string   "symbol",     :default => "", :null => false
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_projects", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction_methods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction_methods_media", :id => false, :force => true do |t|
    t.integer  "medium_id"
    t.integer  "construction_method_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction_methods_projects", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "construction_method_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction_techniques", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction_techniques_media", :id => false, :force => true do |t|
    t.integer  "medium_id"
    t.integer  "construction_technique_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction_techniques_projects", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "construction_technique_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contractors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geologies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geologies_media", :id => false, :force => true do |t|
    t.integer  "medium_id"
    t.integer  "geology_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geologies_projects", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "geology_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groundwater_controls", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groundwater_controls_projects", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "groundwater_control_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "project_id"
    t.string   "author"
    t.date     "date"
    t.string   "publisher"
    t.string   "magazine"
    t.string   "volume"
    t.string   "number"
    t.string   "isbn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.integer  "position"
  end

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "number"
    t.string   "name"
    t.integer  "activity_id"
    t.integer  "country_id"
    t.integer  "owner_id"
    t.integer  "client_id"
    t.integer  "contractor_id"
    t.integer  "designer_id"
    t.text     "technical_data"
    t.text     "description"
    t.integer  "type_id"
    t.boolean  "published"
    t.string   "city"
    t.integer  "estimated_cost"
    t.integer  "bid_price"
    t.integer  "final_cost"
    t.integer  "currency_id"
    t.integer  "state_id"
    t.date     "commencement_date"
    t.date     "completion_date"
    t.text     "geology"
    t.text     "services_performed"
    t.integer  "unit_id"
    t.integer  "overburden_min"
    t.integer  "overburden_max"
    t.integer  "excavation_area_min"
    t.integer  "excavation_area_max"
    t.integer  "tunnel_length_min"
    t.integer  "tunnel_length_max"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects_services", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects_tunneling_unders", :id => false, :force => true do |t|
    t.integer  "project_id"
    t.integer  "tunneling_under_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :force => true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tunneling_unders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.float    "conversion_factor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
