require "test_helper"

class PostulantsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get postulants_create_url
    assert_response :success
  end

  test "should get show" do
    get postulants_show_url
    assert_response :success
  end

  test "should get destroy" do
    get postulants_destroy_url
    assert_response :success
  end
end
