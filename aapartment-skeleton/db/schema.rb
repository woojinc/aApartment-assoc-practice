# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_01_224404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.string "name", null: false
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_apartments_on_owner_id"
  end

  create_table "employee_skills", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.string "skill", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_skills_on_employee_id"
  end

  create_table "employments", force: :cascade do |t|
    t.integer "tenant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tenant_id"], name: "index_employments_on_tenant_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name", null: false
    t.integer "apartment_id", null: false
    t.integer "unit_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_id"], name: "index_tenants_on_apartment_id"
    t.index ["unit_type_id"], name: "index_tenants_on_unit_type_id"
  end

  create_table "unit_types", force: :cascade do |t|
    t.string "room_type", null: false
    t.integer "apartment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_id"], name: "index_unit_types_on_apartment_id"
  end

  create_table "work_orders", force: :cascade do |t|
    t.integer "tenant_id", null: false
    t.integer "employee_skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_skill_id"], name: "index_work_orders_on_employee_skill_id"
    t.index ["tenant_id"], name: "index_work_orders_on_tenant_id"
  end

end
