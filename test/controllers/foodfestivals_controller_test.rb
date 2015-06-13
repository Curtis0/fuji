require 'test_helper'

class FoodfestivalsControllerTest < ActionController::TestCase
  setup do
    @foodfestival = foodfestivals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodfestivals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodfestival" do
    assert_difference('Foodfestival.count') do
      post :create, foodfestival: { what: @foodfestival.what, when_finish: @foodfestival.when_finish, when_start: @foodfestival.when_start, when_time: @foodfestival.when_time, where: @foodfestival.where, why: @foodfestival.why }
    end

    assert_redirected_to foodfestival_path(assigns(:foodfestival))
  end

  test "should show foodfestival" do
    get :show, id: @foodfestival
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodfestival
    assert_response :success
  end

  test "should update foodfestival" do
    patch :update, id: @foodfestival, foodfestival: { what: @foodfestival.what, when_finish: @foodfestival.when_finish, when_start: @foodfestival.when_start, when_time: @foodfestival.when_time, where: @foodfestival.where, why: @foodfestival.why }
    assert_redirected_to foodfestival_path(assigns(:foodfestival))
  end

  test "should destroy foodfestival" do
    assert_difference('Foodfestival.count', -1) do
      delete :destroy, id: @foodfestival
    end

    assert_redirected_to foodfestivals_path
  end
end
