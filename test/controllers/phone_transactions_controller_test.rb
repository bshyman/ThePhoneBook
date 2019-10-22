require 'test_helper'

class PhoneTranzactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_tranzaction = phone_tranzactions(:one)
  end

  test "should get index" do
    get phone_tranzactions_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_tranzaction_url
    assert_response :success
  end

  test "should create phone_tranzaction" do
    assert_difference('PhoneTranzaction.count') do
      post phone_tranzactions_url, params: { phone_tranzaction: {  } }
    end

    assert_redirected_to phone_tranzaction_url(PhoneTranzaction.last)
  end

  test "should show phone_tranzaction" do
    get phone_tranzaction_url(@phone_tranzaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_tranzaction_url(@phone_tranzaction)
    assert_response :success
  end

  test "should update phone_tranzaction" do
    patch phone_tranzaction_url(@phone_tranzaction), params: { phone_tranzaction: {  } }
    assert_redirected_to phone_tranzaction_url(@phone_tranzaction)
  end

  test "should destroy phone_tranzaction" do
    assert_difference('PhoneTranzaction.count', -1) do
      delete phone_tranzaction_url(@phone_tranzaction)
    end

    assert_redirected_to phone_tranzactions_url
  end
end
