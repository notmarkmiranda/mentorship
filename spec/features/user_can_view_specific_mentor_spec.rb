require "rails_helper"

RSpec.feature "User can view specific mentor" do
  scenario "They see the specific information for that mentor" do
    mentor = create(:mentor)

    visit mentors_path

    click_link "View details about #{mentor.name}"

    expect(current_path).to eq(mentor_path(mentor))

    expect(page).to have_content(mentor.email)
    expect(page).to have_content(mentor.phone_number)
    expect(page).to have_content(mentor.slack_name)
    expect(page).to have_content(mentor.location)
    expect(page).to have_content(mentor.timezone)
    expect(page).to have_content(mentor.bio)
  end
end
