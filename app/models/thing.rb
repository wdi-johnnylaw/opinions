class Thing < ActiveRecord::Base
	has_many :opinions

	def average_rating
		opinions.average(:rating)
	end
end
