class Eaten < ActiveRecord::Base
  belongs_to :food
  validates :food, presence: true
end
