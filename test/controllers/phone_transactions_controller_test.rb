require 'test_helper'

class PhoneTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_transaction = phone_transactions(:one)
  end

  test "should get index" do
    get phone_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_transaction_url
    assert_response :success
  end

  test "should create phone_transaction" do
    assert_difference('PhoneTransaction.count') do
      post phone_transactions_url, params: { phone_transaction: {  } }
    end

    assert_redirected_to phone_transaction_url(PhoneTransaction.last)
  end

  test "should show phone_transaction" do
    get phone_transaction_url(@phone_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_transaction_url(@phone_transaction)
    assert_response :success
  end

  test "should update phone_transaction" do
    patch phone_transaction_url(@phone_transaction), params: { phone_transaction: {  } }
    assert_redirected_to phone_transaction_url(@phone_transaction)
  end

  test "should destroy phone_transaction" do
    assert_difference('PhoneTransaction.count', -1) do
      delete phone_transaction_url(@phone_transaction)
    end

    assert_redirected_to phone_transactions_url
  end
end
