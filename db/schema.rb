# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_14_203847) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string "label", comment: "Имя канала, например 'MIC 1'"
    t.integer "order", comment: "Порядок отображения канала"
    t.boolean "visible", default: true, comment: "Флаг видимости канала"
    t.jsonb "ui_state", default: {"fader"=>{"max"=>10, "min"=>-60, "current"=>0}, "meter"=>{"max"=>10, "min"=>-60, "current"=>0}, "on_button"=>false, "tb_button"=>false, "opt_button"=>false, "pfl_button"=>false, "pgm_buttons"=>{"PGM1"=>false, "PGM2"=>false, "PGM3"=>false, "PGM4"=>false}}, comment: "Агрегированное состояние канала"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order"], name: "index_channels_on_order"
  end
end
