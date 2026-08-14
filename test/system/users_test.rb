require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    login_as @user
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Email address", with: "new_user@test.com"
    fill_in "Name", with: "new_user"
    fill_in "Password", with: "secret"
    fill_in "Confirm", with: "secret"
    click_on "Create User"

    assert_text "User new_user was successfully created"
    assert_selector "h1", text: "Users"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Email address", with: @user.email_address
    fill_in "Name", with: @user.name
    fill_in "Password", with: "secret"
    fill_in "Confirm", with: "secret"
    click_on "Update User"

    assert_text "User #{@user.name} was successfully updated"
    assert_selector "h1", text: "Users"
  end

  test "should destroy User" do
    visit user_url(@user)
    accept_confirm { click_on "Destroy this user", match: :first }

    assert_text "User was successfully destroyed"
  end

  test "should check data access" do
    click_on "Logout"

    visit users_url
    assert_text "Sign in"
  end
end
