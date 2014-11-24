require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "8 Count"
    assert_equal full_title("Help"), "Help | 8 Count"
  end
end
