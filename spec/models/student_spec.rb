require 'rails_helper'

RSpec.describe Student, type: :model do\
  context "validations" do
    it { should validate_uniqueness_of :user_id }
  end

  context "relationships" do
    it { should belong_to(:cohort) }
  end
end
