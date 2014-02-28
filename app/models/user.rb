class User < ActiveRecord::Base
  has_many :opinions
  has_many :things, through: :opinions
end
