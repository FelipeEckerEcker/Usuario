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

ActiveRecord::Schema.define(version: 2019_04_14_163750) do

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

  create_table "atividades_extras", force: :cascade do |t|
    t.string "nome"
    t.date "data"
    t.date "data_entrega"
    t.string "curso"
    t.string "disciplina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aulas", force: :cascade do |t|
    t.string "disciplina"
    t.date "data"
    t.string "objetivo"
    t.string "realizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.string "curso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matriculas", force: :cascade do |t|
    t.integer "ra"
    t.string "nome"
    t.string "curso"
    t.string "disciplina"
    t.string "endereco"
    t.string "cpf"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "semestre"
  end

  create_table "nota_alunos", force: :cascade do |t|
    t.string "nome_do_aluno"
    t.integer "nota_g1"
    t.integer "nota_g2"
    t.integer "sub_g1"
    t.integer "sub_g2"
    t.date "data_prova"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota_prova_livros", force: :cascade do |t|
    t.string "nome"
    t.date "data"
    t.string "curso"
    t.integer "nota_aluno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notas_trabalhos", force: :cascade do |t|
    t.string "nome"
    t.date "data"
    t.string "curso"
    t.string "disciplina"
    t.integer "nota_aluno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presenca_aulas", force: :cascade do |t|
    t.string "nome"
    t.date "data"
    t.integer "numero_faltas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professores", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "email"
    t.integer "telefone"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provas", force: :cascade do |t|
    t.string "nome"
    t.string "disciplina"
    t.integer "nota_aluno"
    t.string "curso"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabalhos", force: :cascade do |t|
    t.string "nome"
    t.string "disciplina"
    t.string "curso"
    t.date "data_de_entrega"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
