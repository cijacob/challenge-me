require 'test_helper'

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get challenges_index_url
    assert_response :success
  end

  test "should get new" do
    get challenges_new_url
    assert_response :success
  end

end
