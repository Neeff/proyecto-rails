require 'test_helper'

class VuelosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vuelo = vuelos(:one)
  end

  test "should get index" do
    get vuelos_url
    assert_response :success
  end

  test "should get new" do
    get new_vuelo_url
    assert_response :success
  end

  test "should create vuelo" do
    assert_difference('Vuelo.count') do
      post vuelos_url, params: { vuelo: { destino: @vuelo.destino, h_llegada: @vuelo.h_llegada, h_salida: @vuelo.h_salida, origen: @vuelo.origen } }
    end

    assert_redirected_to vuelo_url(Vuelo.last)
  end

  test "should show vuelo" do
    get vuelo_url(@vuelo)
    assert_response :success
  end

  test "should get edit" do
    get edit_vuelo_url(@vuelo)
    assert_response :success
  end

  test "should update vuelo" do
    patch vuelo_url(@vuelo), params: { vuelo: { destino: @vuelo.destino, h_llegada: @vuelo.h_llegada, h_salida: @vuelo.h_salida, origen: @vuelo.origen } }
    assert_redirected_to vuelo_url(@vuelo)
  end

  test "should destroy vuelo" do
    assert_difference('Vuelo.count', -1) do
      delete vuelo_url(@vuelo)
    end

    assert_redirected_to vuelos_url
  end
end
