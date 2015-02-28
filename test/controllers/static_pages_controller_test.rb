require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
    @base_do = "should get"
  end
  test "#{@base_do} home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "#{@base_do} help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  test "#{@base_do} about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

end
