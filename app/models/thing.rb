class Thing < ActiveRecord::Base
  has_many :opinions

  def rating
    average_rating = opinions.average(:rating)
    average_rating && (average_rating * 2).round / 2.0
  end
end
