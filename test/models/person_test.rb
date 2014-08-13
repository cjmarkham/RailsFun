require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # 
  
  test "should not save without valid params" do
    person = Person.create
    assert_not person.save
  end
end
