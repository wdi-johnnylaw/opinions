class User < ActiveRecord::Base
  has_many :opinions
  #
  # has_many :likes,
  #   -> { where(opinions: { up: true }) },
  #   source: :thing,
  #   through: :opinions
  #
  # has_many :dislikes,
  #   -> { where(opinions: { up: false }) },
  #   source: :thing,
  #   through: :opinions
  has_many :loves,
    -> { where('opinions.rating >= 4') },
    source: :thing,
    through: :opinions

  has_many :hates,
    -> { where('opinions.rating <= 1') },
    source: :thing,
    through: :opinions

  has_many :rated_things, through: :opinions

  accepts_nested_attributes_for :opinions
end
