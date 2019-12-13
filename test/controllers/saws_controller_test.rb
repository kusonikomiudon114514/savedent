require 'test_helper'

class SawsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saw = saws(:one)
  end

  test "should get index" do
    get saws_url
    assert_response :success
  end

  test "should get new" do
    get new_saw_url
    assert_response :success
  end

  test "should create saw" do
    assert_difference('Saw.count') do
      post saws_url, params: { saw: { name: @saw.name } }
    end

    assert_redirected_to saw_url(Saw.last)
  end

  test "should show saw" do
    get saw_url(@saw)
    assert_response :success
  end

  test "should get edit" do
    get edit_saw_url(@saw)
    assert_response :success
  end

  test "should update saw" do
    patch saw_url(@saw), params: { saw: { name: @saw.name } }
    assert_redirected_to saw_url(@saw)
  end

  test "should destroy saw" do
    assert_difference('Saw.count', -1) do
      delete saw_url(@saw)
    end

    assert_redirected_to saws_url
  end
end
