require 'test_helper'

class NavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nafe = naves(:one)
  end

  test "should get index" do
    get naves_url
    assert_response :success
  end

  test "should get new" do
    get new_nafe_url
    assert_response :success
  end

  test "should create nafe" do
    assert_difference('Nave.count') do
      post naves_url, params: { nafe: { fabricante: @nafe.fabricante, modelo: @nafe.modelo } }
    end

    assert_redirected_to nafe_url(Nave.last)
  end

  test "should show nafe" do
    get nafe_url(@nafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_nafe_url(@nafe)
    assert_response :success
  end

  test "should update nafe" do
    patch nafe_url(@nafe), params: { nafe: { fabricante: @nafe.fabricante, modelo: @nafe.modelo } }
    assert_redirected_to nafe_url(@nafe)
  end

  test "should destroy nafe" do
    assert_difference('Nave.count', -1) do
      delete nafe_url(@nafe)
    end

    assert_redirected_to naves_url
  end
end
