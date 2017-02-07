require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get 'http://localhost:5000/v1'
    assert_response :unauthorized
  end

end
