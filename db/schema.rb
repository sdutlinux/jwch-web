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

ActiveRecord::Schema.define(:version => 20121029160449) do

  create_table "categories", :force => true do |t|
    t.string   "name",        :null => false
    t.integer  "section_id",  :null => false
    t.string   "section_key"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "competitions", :force => true do |t|
    t.string   "title"
    t.string   "rank"
    t.string   "year"
    t.string   "teacher"
    t.string   "member"
    t.string   "remark"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "engname"
    t.string   "number"
    t.string   "point"
    t.string   "pre_course"
    t.string   "book"
    t.integer  "category_id"
    t.text     "introduction"
    t.string   "references"
    t.string   "major"
    t.string   "level"
    t.string   "college"
    t.string   "attribution"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "path"
    t.string   "author"
    t.string   "category_id"
    t.string   "content_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "education_projects", :force => true do |t|
    t.string   "name"
    t.string   "year"
    t.string   "department"
    t.string   "team"
    t.string   "rank"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kindeditor_assets", :force => true do |t|
    t.string   "asset"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "laws", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "links", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "color"
  end

  create_table "message_channels", :force => true do |t|
    t.string   "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "old_id"
  end

  create_table "message_types", :force => true do |t|
    t.integer  "message_channel_id"
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "old_id"
  end

  create_table "messages", :force => true do |t|
    t.integer  "message_type_id"
    t.string   "title"
    t.text     "content"
    t.integer  "message_channel_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.string   "department"
    t.boolean  "show",       :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.text     "responsibility"
    t.string   "author"
    t.boolean  "show",           :default => true
    t.integer  "category_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "rules", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "name",              :null => false
    t.string   "section_key",       :null => false
    t.integer  "parent_section_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "specialties", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "college"
    t.string   "degree"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teaching_achievements", :force => true do |t|
    t.string   "name"
    t.string   "year"
    t.string   "department", :default => "山东理工大学"
    t.string   "team"
    t.string   "rank"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "department"
    t.boolean  "admin"
    t.string   "power"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "workflows", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
