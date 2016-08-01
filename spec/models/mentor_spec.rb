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
end
