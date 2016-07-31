require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:picture) }
  end

  context "relationships" do
    it { should belong_to(:posse) }
  end
end
