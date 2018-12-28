require 'test_helper'

class NosotrosControllerTest < ActionDispatch::IntegrationTest
  test "should get nosotros" do
    get nosotros_nosotros_url
    assert_response :success
  end

end
