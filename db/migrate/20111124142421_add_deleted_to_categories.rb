class AddDeletedToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :deleted, :boolean, :default => false
  end

  def self.down
    remove_column :categories, :deleted
  end
end
