require 'rails_helper'

RSpec.describe Student, type: :model do
  context "relationships" do
    it { should belong_to(:cohort) }
  end
end
