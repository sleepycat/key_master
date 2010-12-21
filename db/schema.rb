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

ActiveRecord::Schema.define(:version => 20101110160139) do

  create_table "authorisations", :force => true do |t|
    t.text     "public_key"
    t.boolean  "agent_forwarding"
    t.string   "source_restriction"
    t.string   "command_restriction"
    t.boolean  "x11_forwarding"
    t.string   "authorised_until"
    t.boolean  "port_forwarding"
    t.string   "environment_restriction"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "organisation"
    t.string   "tty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
