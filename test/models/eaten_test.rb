require 'test_helper'

class EatenTest < ActiveSupport::TestCase
  def test_validates_food_presence
    eaten = Eaten.new(portion_factor: 5)
    refute eaten.valid?, "Eaten should not be valid without food"
  end
end
