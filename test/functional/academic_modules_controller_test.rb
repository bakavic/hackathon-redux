require 'test_helper'

class AcademicModulesControllerTest < ActionController::TestCase
  setup do
    @academic_module = academic_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_module" do
    assert_difference('AcademicModule.count') do
      post :create, :academic_module => @academic_module.attributes
    end

    assert_redirected_to academic_module_path(assigns(:academic_module))
  end

  test "should show academic_module" do
    get :show, :id => @academic_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @academic_module.to_param
    assert_response :success
  end

  test "should update academic_module" do
    put :update, :id => @academic_module.to_param, :academic_module => @academic_module.attributes
    assert_redirected_to academic_module_path(assigns(:academic_module))
  end

  test "should destroy academic_module" do
    assert_difference('AcademicModule.count', -1) do
      delete :destroy, :id => @academic_module.to_param
    end

    assert_redirected_to academic_modules_path
  end
end
