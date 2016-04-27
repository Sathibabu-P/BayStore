require 'test_helper'

class ConditionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition_type = condition_types(:one)
  end

  test "should get index" do
    get condition_types_url
    assert_response :success
  end

  test "should get new" do
    get new_condition_type_url
    assert_response :success
  end

  test "should create condition_type" do
    assert_difference('ConditionType.count') do
      post condition_types_url, params: { condition_type: { name: @condition_type.name } }
    end

    assert_redirected_to condition_type_path(ConditionType.last)
  end

  test "should show condition_type" do
    get condition_type_url(@condition_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_condition_type_url(@condition_type)
    assert_response :success
  end

  test "should update condition_type" do
    patch condition_type_url(@condition_type), params: { condition_type: { name: @condition_type.name } }
    assert_redirected_to condition_type_path(@condition_type)
  end

  test "should destroy condition_type" do
    assert_difference('ConditionType.count', -1) do
      delete condition_type_url(@condition_type)
    end

    assert_redirected_to condition_types_path
  end
end
