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

ActiveRecord::Schema.define(version: 20171001001446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "achievements_students", force: :cascade do |t|
    t.bigint "achievement_id"
    t.bigint "student_id"
    t.index ["achievement_id"], name: "index_achievements_students_on_achievement_id"
    t.index ["student_id"], name: "index_achievements_students_on_student_id"
  end

  create_table "alternatives", force: :cascade do |t|
    t.string "description"
    t.boolean "answer"
    t.bigint "questionnaire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaire_id"], name: "index_alternatives_on_questionnaire_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.string "question"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_questionnaires_on_teacher_id"
  end

  create_table "questionnaires_students", force: :cascade do |t|
    t.bigint "questionnaire_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaire_id"], name: "index_questionnaires_students_on_questionnaire_id"
    t.index ["student_id"], name: "index_questionnaires_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "registration_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects_teachers", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subjects_teachers_on_subject_id"
    t.index ["teacher_id"], name: "index_subjects_teachers_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "achievements_students", "achievements"
  add_foreign_key "achievements_students", "students"
  add_foreign_key "alternatives", "questionnaires"
  add_foreign_key "questionnaires", "teachers"
  add_foreign_key "questionnaires_students", "questionnaires"
  add_foreign_key "questionnaires_students", "students"
  add_foreign_key "subjects_teachers", "subjects"
  add_foreign_key "subjects_teachers", "teachers"
end
