require "application_system_test_case"

class TranzactionsTest < ApplicationSystemTestCase
  setup do
    @tranzaction = tranzactions(:one)
  end

  test "visiting the index" do
    visit tranzactions_url
    assert_selector "h1", text: "Tranzactions"
  end

  test "creating a Tranzaction" do
    visit tranzactions_url
    click_on "New Tranzaction"

    click_on "Create Tranzaction"

    assert_text "Tranzaction was successfully created"
    click_on "Back"
  end

  test "updating a Tranzaction" do
    visit tranzactions_url
    click_on "Edit", match: :first

    click_on "Update Tranzaction"

    assert_text "Tranzaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Tranzaction" do
    visit tranzactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tranzaction was successfully destroyed"
  end
end
