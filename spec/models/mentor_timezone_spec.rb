require 'rails_helper'

RSpec.describe MentorTimezone, type: :model do
  it { is_expected.to validate_uniqueness_of :name }
end
