require 'test_helper'

class TypeHeresControllerTest < ActionController::TestCase
  setup do
    @type_here = type_heres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_heres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_here" do
    assert_difference('TypeHere.count') do
      post :create, type_here: { title: @type_here.title, words: @type_here.words }
    end

    assert_redirected_to type_here_path(assigns(:type_here))
  end

  test "should show type_here" do
    get :show, id: @type_here
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_here
    assert_response :success
  end

  test "should update type_here" do
    patch :update, id: @type_here, type_here: { title: @type_here.title, words: @type_here.words }
    assert_redirected_to type_here_path(assigns(:type_here))
  end

  test "should destroy type_here" do
    assert_difference('TypeHere.count', -1) do
      delete :destroy, id: @type_here
    end

    assert_redirected_to type_heres_path
  end
end
