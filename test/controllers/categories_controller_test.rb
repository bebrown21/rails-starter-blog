require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest #Rails 5 ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "sports")
  end
  
  test "should get show" do
    get category_path(@category)
    assert_response :success
  end
end
