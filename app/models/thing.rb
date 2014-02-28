class Thing < ActiveRecord::Base
	has_many :opinions

	def average_rating
		# opinions here is AREL(ActiveRecord Relation)
		opinions.average(:rating)
	end
end
