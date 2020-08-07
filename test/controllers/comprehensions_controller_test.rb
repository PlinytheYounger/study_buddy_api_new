require 'test_helper'

class ComprehensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comprehension = comprehensions(:one)
  end

  test "should get index" do
    get comprehensions_url, as: :json
    assert_response :success
  end

  test "should create comprehension" do
    assert_difference('Comprehension.count') do
      post comprehensions_url, params: { comprehension: { comprehension: @comprehension.comprehension, concept_id: @comprehension.concept_id, user_id: @comprehension.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show comprehension" do
    get comprehension_url(@comprehension), as: :json
    assert_response :success
  end

  test "should update comprehension" do
    patch comprehension_url(@comprehension), params: { comprehension: { comprehension: @comprehension.comprehension, concept_id: @comprehension.concept_id, user_id: @comprehension.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy comprehension" do
    assert_difference('Comprehension.count', -1) do
      delete comprehension_url(@comprehension), as: :json
    end

    assert_response 204
  end
end
