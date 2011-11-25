class AddCategoryToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :category, :string
  end

  def self.down
    remove_column :dishes, :category
  end
end
