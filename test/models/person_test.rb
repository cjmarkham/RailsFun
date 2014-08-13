require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # 
  
  test "should throw name required error" do
    person = Person.create
    assert_equal("Name can't be blank", person.errors.full_messages[0])
  end

  test "should find the person" do
    person = Person.find(people(:one).id)
    assert_equal("Carl Markham", person.name)
  end

end
