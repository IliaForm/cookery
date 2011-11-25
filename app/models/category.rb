class Category < ActiveRecord::Base
	has_many :dishes, :dependent => :destroy

	scope :presents, where(:deleted => false)

end
