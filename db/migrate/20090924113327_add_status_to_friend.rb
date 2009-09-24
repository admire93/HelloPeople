class AddStatusToFriend < ActiveRecord::Migration
  def self.up
    add_column :friends, :status, :boolean, :default => false 
  end

  def self.down
    remove_column :friends, :status
  end
end
