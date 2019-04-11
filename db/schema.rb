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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_04_11_031130) do
=======
ActiveRecord::Schema.define(version: 2019_04_07_220156) do
>>>>>>> 8f90bb9da4f02f20b4544315713b8449c3f7c581

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.text "endereco"
    t.string "pai"
    t.string "mae"
    t.string "documento"
    t.integer "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aulas", force: :cascade do |t|
    t.string "disciplina"
    t.date "data"
    t.string "objetivoRealizado"
    t.string "trabalho"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.string "disciplina"
    t.string "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.integer "nota"
    t.string "presenca"
    t.integer "notasTrabalho"
    t.integer "notasProvaLivro"
    t.string "atividades"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professores", force: :cascade do |t|
    t.string "nome"
<<<<<<< HEAD
    t.string "email"
    t.text "endereco"
    t.integer "telefone"
    t.string "documento"
=======
    t.string "telefone"
    t.string "email"
    t.string "endereco"
>>>>>>> 8f90bb9da4f02f20b4544315713b8449c3f7c581
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "documento"
    t.text "endereco"
    t.integer "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.text "endereco"
    t.string "pai"
    t.string "mae"
    t.string "documento"
    t.integer "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
