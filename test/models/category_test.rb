require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'invalid without name' do
    cat = Category.new(desc: "Lorem ipsum dolor sit amet")
    refute cat.valid?, 'A category is valid without name'
    assert_not_nil cat.errors[:name]
  end
end
