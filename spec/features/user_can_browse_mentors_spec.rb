require "rails_helper"

RSpec.feature "User can browse mentors" do
  scenario "They see all of the mentors on the page" do
    mentors = create_list(:mentor, 1)

    visit root_path

    click_link "Browse Mentors"
    expect(current_path).to eq(mentors_path)

    expect(page).to have_selector(".mentor-panel", count: 1)

    mentors.each do |mentor|
      expect(page).to have_content(mentor.user.name)
      expect(page).to have_content(mentor.location)
      expect(page).to have_content(mentor.mentor_timezone.name)
    end
  end
end
