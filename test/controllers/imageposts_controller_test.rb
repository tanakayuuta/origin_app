require 'test_helper'

class ImagepostsControllerTest < ActionController::TestCase
  setup do
    @imagepost = imageposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imageposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagepost" do
    assert_difference('Imagepost.count') do
      post :create, imagepost: { comment: @imagepost.comment, name: @imagepost.name }
    end

    assert_redirected_to imagepost_path(assigns(:imagepost))
  end

  test "should show imagepost" do
    get :show, id: @imagepost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagepost
    assert_response :success
  end

  test "should update imagepost" do
    patch :update, id: @imagepost, imagepost: { comment: @imagepost.comment, name: @imagepost.name }
    assert_redirected_to imagepost_path(assigns(:imagepost))
  end

  test "should destroy imagepost" do
    assert_difference('Imagepost.count', -1) do
      delete :destroy, id: @imagepost
    end

    assert_redirected_to imageposts_path
  end
end
