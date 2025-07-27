require "test_helper"

class TestDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_design = test_designs(:one)
  end

  test "should get index" do
    get test_designs_url
    assert_response :success
  end

  test "should get new" do
    get new_test_design_url
    assert_response :success
  end

  test "should create test_design" do
    assert_difference("TestDesign.count") do
      post test_designs_url, params: { test_design: { description: @test_design.description, email_address: @test_design.email_address, name: @test_design.name } }
    end

    assert_redirected_to test_design_url(TestDesign.last)
  end

  test "should show test_design" do
    get test_design_url(@test_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_design_url(@test_design)
    assert_response :success
  end

  test "should update test_design" do
    patch test_design_url(@test_design), params: { test_design: { description: @test_design.description, email_address: @test_design.email_address, name: @test_design.name } }
    assert_redirected_to test_design_url(@test_design)
  end

  test "should destroy test_design" do
    assert_difference("TestDesign.count", -1) do
      delete test_design_url(@test_design)
    end

    assert_redirected_to test_designs_url
  end
end
