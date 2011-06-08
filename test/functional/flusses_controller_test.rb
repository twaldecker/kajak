require 'test_helper'

class FlussesControllerTest < ActionController::TestCase
  setup do
    @fluss = flusses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flusses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fluss" do
    assert_difference('Fluss.count') do
      post :create, :fluss => @fluss.attributes
    end

    assert_redirected_to fluss_path(assigns(:fluss))
  end

  test "should show fluss" do
    get :show, :id => @fluss.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fluss.to_param
    assert_response :success
  end

  test "should update fluss" do
    put :update, :id => @fluss.to_param, :fluss => @fluss.attributes
    assert_redirected_to fluss_path(assigns(:fluss))
  end

  test "should destroy fluss" do
    assert_difference('Fluss.count', -1) do
      delete :destroy, :id => @fluss.to_param
    end

    assert_redirected_to flusses_path
  end
end
