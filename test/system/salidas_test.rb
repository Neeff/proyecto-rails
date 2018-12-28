require "application_system_test_case"

class SalidasTest < ApplicationSystemTestCase
  setup do
    @salida = salidas(:one)
  end

  test "visiting the index" do
    visit salidas_url
    assert_selector "h1", text: "Salidas"
  end

  test "creating a Salida" do
    visit salidas_url
    click_on "New Salida"

    fill_in "Fecha", with: @salida.fecha
    click_on "Create Salida"

    assert_text "Salida was successfully created"
    click_on "Back"
  end

  test "updating a Salida" do
    visit salidas_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @salida.fecha
    click_on "Update Salida"

    assert_text "Salida was successfully updated"
    click_on "Back"
  end

  test "destroying a Salida" do
    visit salidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salida was successfully destroyed"
  end
end
