require 'test_helper'

class PracticeProblemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practice_problem = practice_problems(:one)
  end

  test "should get index" do
    get practice_problems_url, as: :json
    assert_response :success
  end

  test "should create practice_problem" do
    assert_difference('PracticeProblem.count') do
      post practice_problems_url, params: { practice_problem: { description: @practice_problem.description, difficulty: @practice_problem.difficulty, name: @practice_problem.name, solution: @practice_problem.solution, url: @practice_problem.url } }, as: :json
    end

    assert_response 201
  end

  test "should show practice_problem" do
    get practice_problem_url(@practice_problem), as: :json
    assert_response :success
  end

  test "should update practice_problem" do
    patch practice_problem_url(@practice_problem), params: { practice_problem: { description: @practice_problem.description, difficulty: @practice_problem.difficulty, name: @practice_problem.name, solution: @practice_problem.solution, url: @practice_problem.url } }, as: :json
    assert_response 200
  end

  test "should destroy practice_problem" do
    assert_difference('PracticeProblem.count', -1) do
      delete practice_problem_url(@practice_problem), as: :json
    end

    assert_response 204
  end
end
