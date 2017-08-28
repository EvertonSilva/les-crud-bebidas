require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  test 'valid drink' do
    drink = Drink.new(name: "Skol", alcoholic_content: 3,
                      expiration_date: DateTime.new(2018, 1, 1),
                      manufacture_date: DateTime.new(2018, 1, 1))
    assert drink.valid?
  end

  test 'invalid without one or more fields' do
    drink = Drink.new(name: "Skol", alcoholic_content: 3)
    refute drink.valid?, 'A drink is valid without all fields'
    assert drink.errors.any?, 'No errors for drink without all fields'
  end
end
