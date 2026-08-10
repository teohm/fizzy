require "test_helper"

class StringTest < ActiveSupport::TestCase
  test "#all_emoji?" do
    assert_predicate "😊", :all_emoji?
    assert_predicate "😊😊😊", :all_emoji?

    assert_not "Hello 😊".all_emoji?
    assert_not "Hello".all_emoji?
  end
end
