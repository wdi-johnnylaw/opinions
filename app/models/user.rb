class User < ActiveRecord::Base
  has_many :opinions

  has_many :rated_things, through: :opinions, source: :thing
end
