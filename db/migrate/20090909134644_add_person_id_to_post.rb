class AddPersonIdToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :person_id, :integer
  end

  def self.down
    remove_column :posts, :person_id
  end
end
