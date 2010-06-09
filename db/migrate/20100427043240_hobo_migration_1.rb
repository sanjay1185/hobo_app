class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :party_users do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :party_id
      t.integer  :user_id
    end
    add_index :party_users, [:party_id]
    add_index :party_users, [:user_id]
  end

  def self.down
    drop_table :party_users
  end
end
