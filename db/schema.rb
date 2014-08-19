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

ActiveRecord::Schema.define(:version => 20140411024459) do

  create_table "activities", :force => true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "organization_id"
    t.string   "deleted_name"
  end

  add_index "activities", ["organization_id"], :name => "index_activities_on_organization_id"
  add_index "activities", ["owner_id", "owner_type"], :name => "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], :name => "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], :name => "index_activities_on_trackable_id_and_trackable_type"

  create_table "cds_templates", :force => true do |t|
    t.string   "name"
    t.text     "status"
    t.integer  "title_group_id"
    t.integer  "scoring_scale_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "cds_templates", ["scoring_scale_id"], :name => "index_cds_templates_on_scoring_scale_id"
  add_index "cds_templates", ["title_group_id"], :name => "index_cds_templates_on_title_group_id"

  create_table "cds_templates_competencies", :force => true do |t|
    t.integer  "cds_template_id"
    t.integer  "competency_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "cds_templates_competencies", ["cds_template_id"], :name => "index_cds_templates_competencies_on_cds_template_id"
  add_index "cds_templates_competencies", ["competency_id"], :name => "index_cds_templates_competencies_on_competency_id"

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.text     "comment_type"
    t.integer  "user_id"
    t.integer  "evidence_id"
    t.integer  "current_title_id"
    t.integer  "short_term_objective_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "comments", ["current_title_id"], :name => "index_comments_on_current_title_id"
  add_index "comments", ["evidence_id"], :name => "index_comments_on_evidence_id"
  add_index "comments", ["short_term_objective_id"], :name => "index_comments_on_short_term_objective_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "competencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "current_titles", :force => true do |t|
    t.integer  "rank_id"
    t.text     "short_term"
    t.text     "long_term"
    t.text     "coach_plan"
    t.integer  "user_id"
    t.integer  "title_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "current_titles", ["title_id"], :name => "index_current_titles_on_title_id"
  add_index "current_titles", ["user_id"], :name => "index_current_titles_on_user_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "manager_id"
    t.integer  "cds_template_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "status"
  end

  add_index "departments", ["cds_template_id"], :name => "index_departments_on_cds_template_id"

  create_table "evidences", :force => true do |t|
    t.text     "content"
    t.string   "evidence_type"
    t.string   "status"
    t.string   "value"
    t.integer  "slot_assess_id"
    t.integer  "other_subject_assess_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "evidences", ["other_subject_assess_id"], :name => "index_evidences_on_other_subject_assess_id"
  add_index "evidences", ["slot_assess_id"], :name => "index_evidences_on_slot_assess_id"

  create_table "levels", :force => true do |t|
    t.string   "name"
    t.integer  "competency_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "levels", ["competency_id"], :name => "index_levels_on_competency_id"

  create_table "organizations", :force => true do |t|
    t.string  "name"
    t.boolean "is_super_org", :default => false
    t.string  "description"
  end

  create_table "other_subject_assesses", :force => true do |t|
    t.string   "score"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "other_subject_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "other_subject_assesses", ["other_subject_id"], :name => "index_other_subject_assesses_on_other_subject_id"
  add_index "other_subject_assesses", ["user_id"], :name => "index_other_subject_assesses_on_user_id"

  create_table "other_subjects", :force => true do |t|
    t.string   "name"
    t.integer  "scoring_scale_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "other_subjects", ["scoring_scale_id"], :name => "index_other_subjects_on_scoring_scale_id"

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "group_permission_name"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_active",       :default => true
    t.integer  "organization_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "projects_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ranks", :force => true do |t|
    t.integer  "number_competencies_next_level"
    t.integer  "title_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "ranks", ["title_id"], :name => "index_ranks_on_title_id"

  create_table "scoring_scales", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "scorings", :force => true do |t|
    t.string   "score"
    t.text     "description"
    t.integer  "scoring_scale_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "scorings", ["scoring_scale_id"], :name => "index_scorings_on_scoring_scale_id"

  create_table "short_term_objectives", :force => true do |t|
    t.string   "title"
    t.text     "short_term"
    t.text     "action_plan"
    t.datetime "target_date"
    t.integer  "current_title_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "short_term_objectives", ["current_title_id"], :name => "index_short_term_objectives_on_current_title_id"

  create_table "slot_assesses", :force => true do |t|
    t.string   "value"
    t.string   "status"
    t.string   "competency_name"
    t.string   "level_name"
    t.string   "slot_name"
    t.integer  "slot_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "slot_assesses", ["slot_id"], :name => "index_slot_assesses_on_slot_id"
  add_index "slot_assesses", ["user_id"], :name => "index_slot_assesses_on_user_id"

  create_table "slots", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "guideline"
    t.integer  "level_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "slots", ["level_id"], :name => "index_slots_on_level_id"

  create_table "title_groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "title_groups_other_subjects", :force => true do |t|
    t.string   "scoring"
    t.integer  "title_id"
    t.integer  "title_group_id"
    t.integer  "other_subject_id"
    t.integer  "cds_template_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "title_groups_other_subjects", ["cds_template_id"], :name => "index_title_groups_other_subjects_on_cds_template_id"
  add_index "title_groups_other_subjects", ["other_subject_id"], :name => "index_title_groups_other_subjects_on_other_subject_id"
  add_index "title_groups_other_subjects", ["title_group_id"], :name => "index_title_groups_other_subjects_on_title_group_id"

  create_table "titles", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "value"
    t.integer  "title_group_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "career_path"
  end

  add_index "titles", ["title_group_id"], :name => "index_titles_on_title_group_id"

  create_table "titles_competencies", :force => true do |t|
    t.string   "level_ranking"
    t.float    "value"
    t.string   "career_path"
    t.integer  "title_id"
    t.integer  "competency_id"
    t.integer  "cds_template_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "titles_competencies", ["cds_template_id"], :name => "index_titles_competencies_on_cds_template_id"
  add_index "titles_competencies", ["competency_id"], :name => "index_titles_competencies_on_competency_id"
  add_index "titles_competencies", ["title_id"], :name => "index_titles_competencies_on_title_id"

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_active",       :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "organization_id"
  end

  add_index "user_groups", ["organization_id"], :name => "index_user_groups_on_organization_id"

  create_table "user_groups_permissions", :force => true do |t|
    t.integer  "user_group_id"
    t.integer  "permission_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "user_groups_users", :force => true do |t|
    t.integer  "user_group_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "project_id"
  end

  create_table "users", :force => true do |t|
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "is_admin",               :default => false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_deleted",             :default => false
    t.string   "email"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "organization_id"
    t.string   "full_name"
    t.boolean  "status"
    t.string   "career_path"
    t.integer  "staff_number"
    t.integer  "team_leader_id"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "cached_failed_attempts", :default => 0
  end

  add_index "users", ["organization_id"], :name => "index_users_on_organization_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["staff_number"], :name => "index_users_on_staff_number"
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "users_departments", :force => true do |t|
    t.boolean  "is_actived"
    t.integer  "user_id"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users_departments", ["department_id"], :name => "index_users_departments_on_department_id"
  add_index "users_departments", ["user_id"], :name => "index_users_departments_on_user_id"

end