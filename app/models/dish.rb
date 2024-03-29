class Dish < ActiveRecord::Base
	belongs_to :category

	scope :presents, where(:deleted => false)

	validates_presence_of :name, :recipe
	validates :recipe, :length => { :maximum => 1000}

end
