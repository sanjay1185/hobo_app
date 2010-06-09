class CreateParties < ActiveRecord::Migration
  def self.up
    create_table :parties do |t|
      t.string   :name
      t.date     :date
      t.integer  :user_id
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :parties
  end
end
