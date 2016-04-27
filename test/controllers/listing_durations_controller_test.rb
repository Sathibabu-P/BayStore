require 'test_helper'

class ListingDurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing_duration = listing_durations(:one)
  end

  test "should get index" do
    get listing_durations_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_duration_url
    assert_response :success
  end

  test "should create listing_duration" do
    assert_difference('ListingDuration.count') do
      post listing_durations_url, params: { listing_duration: { name: @listing_duration.name } }
    end

    assert_redirected_to listing_duration_path(ListingDuration.last)
  end

  test "should show listing_duration" do
    get listing_duration_url(@listing_duration)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_duration_url(@listing_duration)
    assert_response :success
  end

  test "should update listing_duration" do
    patch listing_duration_url(@listing_duration), params: { listing_duration: { name: @listing_duration.name } }
    assert_redirected_to listing_duration_path(@listing_duration)
  end

  test "should destroy listing_duration" do
    assert_difference('ListingDuration.count', -1) do
      delete listing_duration_url(@listing_duration)
    end

    assert_redirected_to listing_durations_path
  end
end
