require 'test_helper'

class PayControllerTest < ActionDispatch::IntegrationTest
  test "should get pay" do
    get pay_pay_url
    assert_response :success
  end

end
