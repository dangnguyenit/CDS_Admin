class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :status, :boolean
    add_column :users, :career_path, :string
    add_column :users, :staff_number, :integer
    add_column :users, :team_leader_id, :integer
    add_column :users, :is_manager, :boolean
    add_column :users, :is_team_leader, :boolean
    add_column :users, :is_bod, :boolean
    add_column :users, :is_hr, :boolean
    add_column :users, :main_department_id, :integer
    add_column :users, :pre_department_id, :integer

    add_column :users, :failed_attempts, :integer, default: 0
    add_column :users, :unlock_token, :string
    add_column :users, :locked_at, :datetime

    add_column :users, :cached_failed_attempts, :integer, default: 0

    add_index :users, :unlock_token, unique: true
    add_index :users, :staff_number
  end
end