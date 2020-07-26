require 'test_helper'

class InterviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview = interviews(:one)
  end

  test "should get index" do
    get interviews_url, as: :json
    assert_response :success
  end

  test "should create interview" do
    assert_difference('Interview.count') do
      post interviews_url, params: { interview: { company_name: @interview.company_name, interview_date: @interview.interview_date, interview_type: @interview.interview_type } }, as: :json
    end

    assert_response 201
  end

  test "should show interview" do
    get interview_url(@interview), as: :json
    assert_response :success
  end

  test "should update interview" do
    patch interview_url(@interview), params: { interview: { company_name: @interview.company_name, interview_date: @interview.interview_date, interview_type: @interview.interview_type } }, as: :json
    assert_response 200
  end

  test "should destroy interview" do
    assert_difference('Interview.count', -1) do
      delete interview_url(@interview), as: :json
    end

    assert_response 204
  end
end
