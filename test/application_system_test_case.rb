require "test_helper"

ENV["SE_GECKODRIVER"] = "/snap/bin/geckodriver"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :firefox, screen_size: [ 1400, 1400 ] do |options|
    options.binary = "/snap/firefox/current/usr/lib/firefox/firefox"
  end

  def login_as(user)
    visit new_session_path
    fill_in "email_address", with: user.email_address
    fill_in "password", with: "password"
    click_on "Sign in"

    assert_button "Logout", wait: 10
  end
end
