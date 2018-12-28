require "application_system_test_case"

class VuelosTest < ApplicationSystemTestCase
  setup do
    @vuelo = vuelos(:one)
  end

  test "visiting the index" do
    visit vuelos_url
    assert_selector "h1", text: "Vuelos"
  end

  test "creating a Vuelo" do
    visit vuelos_url
    click_on "New Vuelo"

    fill_in "Destino", with: @vuelo.destino
    fill_in "H Llegada", with: @vuelo.h_llegada
    fill_in "H Salida", with: @vuelo.h_salida
    fill_in "Origen", with: @vuelo.origen
    click_on "Create Vuelo"

    assert_text "Vuelo was successfully created"
    click_on "Back"
  end

  test "updating a Vuelo" do
    visit vuelos_url
    click_on "Edit", match: :first

    fill_in "Destino", with: @vuelo.destino
    fill_in "H Llegada", with: @vuelo.h_llegada
    fill_in "H Salida", with: @vuelo.h_salida
    fill_in "Origen", with: @vuelo.origen
    click_on "Update Vuelo"

    assert_text "Vuelo was successfully updated"
    click_on "Back"
  end

  test "destroying a Vuelo" do
    visit vuelos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vuelo was successfully destroyed"
  end
end
