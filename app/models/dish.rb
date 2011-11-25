class Dish < ActiveRecord::Base
	belongs_to :category

	scope :presents, where(:deleted => false)

end
