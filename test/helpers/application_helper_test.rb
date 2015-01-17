require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Sudden Impact"
    assert_equal full_title("Help"), "Help | Sudden Impact"
  end
end
