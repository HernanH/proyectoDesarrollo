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

ActiveRecord::Schema.define(version: 20180517031401) do

  create_table "audios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["classroom_id"], name: "index_audios_on_classroom_id"
  end

  create_table "c_students", force: :cascade do |t|
    t.float    "asistencia"
    t.float    "promedio"
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_c_students_on_course_id"
    t.index ["student_id"], name: "index_c_students_on_student_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_calendars_on_student_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "area"
    t.string   "tema"
    t.integer  "cupos"
    t.string   "direccion"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_classrooms_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "nombre"
    t.string   "jornada"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.string   "nombretarea"
    t.datetime "fechapublicacion"
    t.datetime "fechaexpiracion"
    t.integer  "c_student_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["c_student_id"], name: "index_homeworks_on_c_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "correo"
    t.string   "estado"
    t.datetime "fechainscripcion"
    t.float    "ppa"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "correo"
    t.integer  "edad"
    t.string   "rut"
    t.string   "especialidad"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tests", force: :cascade do |t|
    t.float    "nota"
    t.datetime "fechaevaluacion"
    t.string   "tipoevaluacion"
    t.float    "ponderacion"
    t.integer  "c_student_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["c_student_id"], name: "index_tests_on_c_student_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["classroom_id"], name: "index_videos_on_classroom_id"
  end

end
