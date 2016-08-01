require 'rails_helper'

RSpec.describe Mentor, type: :model do
  describe "Associations" do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :mentor_timezone }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of :location }
    it { is_expected.to validate_presence_of :bio }
    it { is_expected.to validate_presence_of :mentor_timezone }
    it { is_expected.to validate_presence_of :user }
  end

  describe "#name" do
    it "delegates the call to the user association" do
      mentor = create(:mentor)

      expect(mentor.name).to eq(mentor.user.name)
    end
  end

  describe "#timezone" do
    it "delegates the call to the mentor timezone association" do
      mentor = create(:mentor)

      expect(mentor.timezone).to eq(mentor.mentor_timezone.name)
    end
  end

  describe "#picture" do
    it "delegates the call to the user association" do
      mentor = create(:mentor)

      expect(mentor.picture).to eq(mentor.user.picture)
    end
  end
end
