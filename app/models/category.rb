class Category < ActiveRecord::Base
	has_many :dishes

	validates :name, :presence => true,
					 :uniqueness => true

	scope :presents, where(:deleted => false)

	def del_depends_dishes
	  self.dishes.each do |d|
	   d.deleted = true
	   d.save!
      end
    end

end
