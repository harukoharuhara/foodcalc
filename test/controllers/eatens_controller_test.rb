require 'test_helper'

class EatensControllerTest < ActionController::TestCase
  setup do
    @eaten = eatens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eatens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eaten" do
    assert_difference('Eaten.count') do
      post :create, eaten: { date: @eaten.date, food_id: @eaten.food_id, portion_factor: @eaten.portion_factor }
    end

    assert_redirected_to eaten_path(assigns(:eaten))
  end

  test "should show eaten" do
    get :show, id: @eaten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eaten
    assert_response :success
  end

  test "should update eaten" do
    patch :update, id: @eaten, eaten: { date: @eaten.date, food_id: @eaten.food_id, portion_factor: @eaten.portion_factor }
    assert_redirected_to eaten_path(assigns(:eaten))
  end

  test "should destroy eaten" do
    assert_difference('Eaten.count', -1) do
      delete :destroy, id: @eaten
    end

    assert_redirected_to eatens_path
  end
end
