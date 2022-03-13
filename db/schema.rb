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

ActiveRecord::Schema.define(version: 2022_05_08_190000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "document_destinations", id: { comment: "ID" }, comment: "Document Destination Name", force: :cascade do |t|
    t.string "document_destination_name", null: false, comment: "Document Destination Name"
    t.string "email", comment: "Email"
    t.string "phone", comment: "Phone"
    t.string "description", comment: "Description"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "document_incomings", force: :cascade do |t|
    t.string "document_name", null: false
    t.bigint "document_type_id", null: false
    t.bigint "document_destination_id", null: false
    t.string "abstract", null: false
    t.string "file_path"
    t.string "file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_processing_times", id: { comment: "ID" }, comment: "Document Processing Time", force: :cascade do |t|
    t.bigint "document_type_id", null: false, comment: "Document Type ID"
    t.bigint "document_destination_id", null: false, comment: "Document Destination ID"
    t.bigint "processing_time", null: false, comment: "Processing Time"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "document_types", id: { comment: "ID" }, comment: "Document Type", force: :cascade do |t|
    t.string "document_type_name", null: false, comment: "Document Type Name"
    t.string "description", comment: "Description"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

end
