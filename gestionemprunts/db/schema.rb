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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140111114431) do

  create_table "complexdates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "request_id"
    t.integer  "complexdatetype_id"
    t.date     "cdate"
    t.time     "beginhour"
    t.time     "endhour"
    t.time     "precisehour"
  end

  create_table "complexdatetypes", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materialgroups", force: true do |t|
    t.string   "label"
    t.string   "site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "materialgroup_id"
    t.integer  "materialstatus_id"
    t.string   "serialnumber"
    t.date     "guaranteeend"
    t.string   "anomaly"
    t.string   "whobought"
    t.integer  "technicalfeature_id"
  end

  create_table "materials_requests", id: false, force: true do |t|
    t.integer "material_id"
    t.integer "request_id"
  end

  create_table "materialstatuses", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privileges", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label"
  end

  create_table "requests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "requeststatus_id"
    t.string   "borrowmotive"
    t.string   "refusalmotive"
  end

  create_table "requeststatuses", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technicalfeatures", force: true do |t|
    t.string   "materialtype"
    t.string   "os"
    t.string   "name"
    t.string   "version"
    t.integer  "memory"
    t.integer  "ram"
    t.float    "processorfrequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "privilege_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "hashed_password"
  end

  create_table "users_materialgroups", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "materialgroup_id"
  end

end
