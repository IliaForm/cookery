class AddDeletedToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :deleted, :boolean, :default => false 
  end

  def self.down
    remove_column :dishes, :deleted
  end
end
