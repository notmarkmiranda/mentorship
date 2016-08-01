require "rails_helper"

RSpec.feature "User can create a new mentor account" do
  scenario "The information is updated and they are taken back to their dashboard" do
    user = create(:user)
    ApplicationController.any_instance.stub(:current_user).and_return(user)

    visit new_mentor_path

    fill_in "Location", with: "Denver"
    select "MT", from: "Timezone"

    click_button "Create Mentor Profile"

    click_link "Browse Mentors"

    expect(page).to have_content(user.name)
    expect(page).to have_content("Denver")
  end
end
