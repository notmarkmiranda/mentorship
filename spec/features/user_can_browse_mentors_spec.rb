require "rails_helper"

RSpec.feature "User can browse mentors" do
  scenario "They see all of the mentors on the page" do
    mentors = create_list(:mentors, 3)

    visit mentors_path

    expect(page).to have_selector("mentor", count: 3)

    mentors.each do |mentor|
      expect(page).to have_content(mentor.user.name)
      expect(page).to have_content(mentor.location)
      expect(page).to have_content(mentor.user.email)
    end
  end
end
