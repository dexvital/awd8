require "application_system_test_case"

class TestDesignsTest < ApplicationSystemTestCase
  setup do
    @test_design = test_designs(:one)
  end

  test "visiting the index" do
    visit test_designs_url
    assert_selector "h1", text: "Test designs"
  end

  test "should create test design" do
    visit test_designs_url
    click_on "New test design"

    fill_in "Description", with: @test_design.description
    fill_in "Email address", with: @test_design.email_address
    fill_in "Name", with: @test_design.name
    click_on "Create Test design"

    assert_text "Test design was successfully created"
    click_on "Back"
  end

  test "should update Test design" do
    visit test_design_url(@test_design)
    click_on "Edit this test design", match: :first

    fill_in "Description", with: @test_design.description
    fill_in "Email address", with: @test_design.email_address
    fill_in "Name", with: @test_design.name
    click_on "Update Test design"

    assert_text "Test design was successfully updated"
    click_on "Back"
  end

  test "should destroy Test design" do
    visit test_design_url(@test_design)
    accept_confirm { click_on "Destroy this test design", match: :first }

    assert_text "Test design was successfully destroyed"
  end
end
