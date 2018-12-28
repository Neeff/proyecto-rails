require 'test_helper'

class SalidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salida = salidas(:one)
  end

  test "should get index" do
    get salidas_url
    assert_response :success
  end

  test "should get new" do
    get new_salida_url
    assert_response :success
  end

  test "should create salida" do
    assert_difference('Salida.count') do
      post salidas_url, params: { salida: { fecha: @salida.fecha } }
    end

    assert_redirected_to salida_url(Salida.last)
  end

  test "should show salida" do
    get salida_url(@salida)
    assert_response :success
  end

  test "should get edit" do
    get edit_salida_url(@salida)
    assert_response :success
  end

  test "should update salida" do
    patch salida_url(@salida), params: { salida: { fecha: @salida.fecha } }
    assert_redirected_to salida_url(@salida)
  end

  test "should destroy salida" do
    assert_difference('Salida.count', -1) do
      delete salida_url(@salida)
    end

    assert_redirected_to salidas_url
  end
end
