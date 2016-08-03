require 'rails_helper'

RSpec.describe Cohort, type: :model do
  context "relationships" do
    it { should have_many(:students) }
  end
end
