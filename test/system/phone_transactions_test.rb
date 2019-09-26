require "application_system_test_case"

class PhoneTransactionsTest < ApplicationSystemTestCase
  setup do
    @phone_transaction = phone_transactions(:one)
  end

  test "visiting the index" do
    visit phone_transactions_url
    assert_selector "h1", text: "Phone Transactions"
  end

  test "creating a Phone transaction" do
    visit phone_transactions_url
    click_on "New Phone Transaction"

    click_on "Create Phone transaction"

    assert_text "Phone transaction was successfully created"
    click_on "Back"
  end

  test "updating a Phone transaction" do
    visit phone_transactions_url
    click_on "Edit", match: :first

    click_on "Update Phone transaction"

    assert_text "Phone transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone transaction" do
    visit phone_transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone transaction was successfully destroyed"
  end
end
