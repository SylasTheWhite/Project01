require 'test_helper'

class KwasniesControllerTest < ActionController::TestCase
  setup do
    @kwasny = kwasnies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kwasnies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kwasny" do
    assert_difference('Kwasny.count') do
      post :create, kwasny: { czyjesttakbardzochorynajakiegowyglada: @kwasny.czyjesttakbardzochorynajakiegowyglada, ilewypil: @kwasny.ilewypil, imie: @kwasny.imie }
    end

    assert_redirected_to kwasny_path(assigns(:kwasny))
  end

  test "should show kwasny" do
    get :show, id: @kwasny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kwasny
    assert_response :success
  end

  test "should update kwasny" do
    patch :update, id: @kwasny, kwasny: { czyjesttakbardzochorynajakiegowyglada: @kwasny.czyjesttakbardzochorynajakiegowyglada, ilewypil: @kwasny.ilewypil, imie: @kwasny.imie }
    assert_redirected_to kwasny_path(assigns(:kwasny))
  end

  test "should destroy kwasny" do
    assert_difference('Kwasny.count', -1) do
      delete :destroy, id: @kwasny
    end

    assert_redirected_to kwasnies_path
  end
end
