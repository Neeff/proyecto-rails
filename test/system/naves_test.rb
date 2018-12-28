require "application_system_test_case"

class NavesTest < ApplicationSystemTestCase
  setup do
    @nafe = naves(:one)
  end

  test "visiting the index" do
    visit naves_url
    assert_selector "h1", text: "Naves"
  end

  test "creating a Nave" do
    visit naves_url
    click_on "New Nave"

    fill_in "Fabricante", with: @nafe.fabricante
    fill_in "Modelo", with: @nafe.modelo
    click_on "Create Nave"

    assert_text "Nave was successfully created"
    click_on "Back"
  end

  test "updating a Nave" do
    visit naves_url
    click_on "Edit", match: :first

    fill_in "Fabricante", with: @nafe.fabricante
    fill_in "Modelo", with: @nafe.modelo
    click_on "Update Nave"

    assert_text "Nave was successfully updated"
    click_on "Back"
  end

  test "destroying a Nave" do
    visit naves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nave was successfully destroyed"
  end
end
