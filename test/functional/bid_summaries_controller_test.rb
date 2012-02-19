require 'test_helper'

class BidSummariesControllerTest < ActionController::TestCase
  setup do
    @bid_summary = bid_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bid_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bid_summary" do
    assert_difference('BidSummary.count') do
      post :create, :bid_summary => @bid_summary.attributes
    end

    assert_redirected_to bid_summary_path(assigns(:bid_summary))
  end

  test "should show bid_summary" do
    get :show, :id => @bid_summary.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bid_summary.to_param
    assert_response :success
  end

  test "should update bid_summary" do
    put :update, :id => @bid_summary.to_param, :bid_summary => @bid_summary.attributes
    assert_redirected_to bid_summary_path(assigns(:bid_summary))
  end

  test "should destroy bid_summary" do
    assert_difference('BidSummary.count', -1) do
      delete :destroy, :id => @bid_summary.to_param
    end

    assert_redirected_to bid_summaries_path
  end
end
