require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Email", with: @profile.email
    fill_in "Facebook", with: @profile.facebook
    fill_in "Instagram", with: @profile.instagram
    fill_in "Linkedin", with: @profile.linkedin
    check "Main" if @profile.main
    fill_in "Name", with: @profile.name
    fill_in "Skills", with: @profile.skills
    fill_in "Telegram", with: @profile.telegram
    fill_in "Twitter", with: @profile.twitter
    fill_in "Whatsapp", with: @profile.whatsapp
    fill_in "Youtube", with: @profile.youtube
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Email", with: @profile.email
    fill_in "Facebook", with: @profile.facebook
    fill_in "Instagram", with: @profile.instagram
    fill_in "Linkedin", with: @profile.linkedin
    check "Main" if @profile.main
    fill_in "Name", with: @profile.name
    fill_in "Skills", with: @profile.skills
    fill_in "Telegram", with: @profile.telegram
    fill_in "Twitter", with: @profile.twitter
    fill_in "Whatsapp", with: @profile.whatsapp
    fill_in "Youtube", with: @profile.youtube
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
