require 'test_helper'

class StyleGuideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get style_guide_index_url
    assert_response :success
  end

end
