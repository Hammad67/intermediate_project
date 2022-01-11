require "test_helper"

class MyFoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_foo = my_foos(:one)
  end

  test "should get index" do
    get my_foos_url
    assert_response :success
  end

  test "should get new" do
    get new_my_foo_url
    assert_response :success
  end

  test "should create my_foo" do
    assert_difference('MyFoo.count') do
      post my_foos_url, params: { my_foo: { name: @my_foo.name } }
    end

    assert_redirected_to my_foo_url(MyFoo.last)
  end

  test "should show my_foo" do
    get my_foo_url(@my_foo)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_foo_url(@my_foo)
    assert_response :success
  end

  test "should update my_foo" do
    patch my_foo_url(@my_foo), params: { my_foo: { name: @my_foo.name } }
    assert_redirected_to my_foo_url(@my_foo)
  end

  test "should destroy my_foo" do
    assert_difference('MyFoo.count', -1) do
      delete my_foo_url(@my_foo)
    end

    assert_redirected_to my_foos_url
  end
end
