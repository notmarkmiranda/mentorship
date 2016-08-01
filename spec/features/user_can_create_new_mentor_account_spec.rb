require "rails_helper"

RSpec.feature "User can create a new mentor account" do
  scenario "The information is updated and they are taken back to their dashboard" do
    user = create(:user)
    ApplicationController.any_instance.stub(:current_user).and_return(user)
    timezone = create(:mentor_timezone)

    visit new_mentor_path

    fill_in "Location", with: "Denver"
    select timezone.name, from: :mentor_mentor_timezone_id

    click_button "Create Profile"

    click_link "Browse Mentors"

    expect(page).to have_content(user.name)
    expect(page).to have_content("Denver")
  end
end
