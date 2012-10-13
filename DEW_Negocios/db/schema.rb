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

ActiveRecord::Schema.define(:version => 20120919195653) do

  create_table "categoria", :force => true do |t|
    t.string   "codcategoria"
    t.string   "nombrecategoria"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "emprendedors", :force => true do |t|
    t.string   "codsabio"
    t.string   "nombres"
    t.string   "apepaterno"
    t.string   "apematerno"
    t.string   "sexo"
    t.string   "tipodi"
    t.integer  "numerodi"
    t.string   "email"
    t.integer  "celular"
    t.string   "direccion"
    t.date     "fecnac"
    t.string   "password"
    t.string   "apelativo"
    t.text     "autobigrafia"
    t.string   "web"
    t.integer  "ctabancaria"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "faqs", :force => true do |t|
    t.text     "pregunta"
    t.text     "respuesta"
    t.string   "satisfactorio"
    t.integer  "plannegocio_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "faqs", ["plannegocio_id"], :name => "index_faqs_on_plannegocio_id"

  create_table "plannegocios", :force => true do |t|
    t.string   "codplan"
    t.string   "tituloplan"
    t.string   "codcategoria"
    t.string   "codsubcategoria"
    t.text     "vision"
    t.text     "razonamiento"
    t.integer  "tiempoejecucionano"
    t.integer  "tiempoejecucionmes"
    t.integer  "tiempoejecuciondia"
    t.decimal  "inversiontotal"
    t.decimal  "margenneto"
    t.decimal  "roi"
    t.string   "linkdocumento"
    t.decimal  "precioventa"
    t.string   "validadoplan"
    t.text     "mensajerechazo"
    t.string   "codsabio"
    t.string   "codemprendedor"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "sabios", :force => true do |t|
    t.string   "codemprendedor"
    t.string   "nombres"
    t.string   "apepaterno"
    t.string   "apematerno"
    t.string   "sexo"
    t.string   "tipodi"
    t.integer  "numerodi"
    t.string   "email"
    t.integer  "celular"
    t.string   "direccion"
    t.date     "fecnac"
    t.string   "password"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "subcategoria", :force => true do |t|
    t.string   "codcategoria"
    t.string   "codsubcategoria"
    t.string   "nombresubcategoria"
    t.integer  "categoria_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "subcategoria", ["categoria_id"], :name => "index_subcategoria_on_categoria_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
