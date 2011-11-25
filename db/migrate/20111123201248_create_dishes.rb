class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.string :name
      t.text :recipe
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
