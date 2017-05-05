require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  
  def setup
    @actived = users(:michael)
    @not_actived = users(:lana)
  end  
  
  test "show actived user" do
    log_in_as(@actived)
    follow_redirect!
    assert_match @actived.name, response.body
  end
  
  test "show not actived user" do
    log_in_as(@not_actived)
    follow_redirect!
    assert_match "Welcome to the Sample App", response.body
  end
end
