require "application_system_test_case"

class PhoneTranzactionsTest < ApplicationSystemTestCase
  setup do
    @phone_tranzaction = phone_tranzactions(:one)
  end

  test "visiting the index" do
    visit phone_tranzactions_url
    assert_selector "h1", text: "Phone Tranzactions"
  end

  test "creating a Phone tranzaction" do
    visit phone_tranzactions_url
    click_on "New Phone Tranzaction"

    click_on "Create Phone tranzaction"

    assert_text "Phone tranzaction was successfully created"
    click_on "Back"
  end

  test "updating a Phone tranzaction" do
    visit phone_tranzactions_url
    click_on "Edit", match: :first

    click_on "Update Phone tranzaction"

    assert_text "Phone tranzaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone tranzaction" do
    visit phone_tranzactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone tranzaction was successfully destroyed"
  end
end
