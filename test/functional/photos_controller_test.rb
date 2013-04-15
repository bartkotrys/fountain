require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @photo = photos(:one)
  end

  test "should get index" do
    get :index, :user_id => @user
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new, :user_id => @user
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, :user_id => @user, :photo => @photo.attributes
    end

    assert_redirected_to user_photo_path(@user, assigns(:photo))
  end

  test "should show photo" do
    get :show, :user_id => @user, :id => @photo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :user_id => @user, :id => @photo.to_param
    assert_response :success
  end

  test "should update photo" do
    put :update, :user_id => @user, :id => @photo.to_param, :photo => @photo.attributes
    assert_redirected_to user_photo_path(@user, assigns(:photo))
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, :user_id => @user, :id => @photo.to_param
    end

    assert_redirected_to user_photos_path(@user)
  end
end
