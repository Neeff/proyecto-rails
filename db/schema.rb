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

ActiveRecord::Schema.define(version: 2018_12_31_034944) do

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "cargo"
    t.float "sueldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nave_id"
    t.index ["nave_id"], name: "index_empleados_on_nave_id"
  end

  create_table "naves", force: :cascade do |t|
    t.string "modelo"
    t.string "fabricante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nave_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float "subtotal"
    t.float "tax"
    t.float "shipping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "nave_id"
    t.index ["nave_id"], name: "index_products_on_nave_id"
  end

  create_table "salidas", force: :cascade do |t|
    t.string "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nave_id"
    t.index ["nave_id"], name: "index_salidas_on_nave_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vuelos", force: :cascade do |t|
    t.string "origen"
    t.string "h_llegada"
    t.string "h_salida"
    t.string "destino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nave_id"
    t.index ["nave_id"], name: "index_vuelos_on_nave_id"
  end

end
