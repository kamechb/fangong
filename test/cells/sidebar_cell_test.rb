require 'test_helper'

class SidebarCellTest < Cell::TestCase
  test "online" do
    invoke :online
    assert_select "p"
  end
  

end
