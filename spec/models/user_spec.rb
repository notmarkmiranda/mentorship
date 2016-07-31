require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    Posse.create(id: 1, name: "No Posse")
  end

  context "validations" do
    it { should validate_presence_of(:uid) }
    it { should validate_uniqueness_of(:uid) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:picture) }
  end

  context "relationships" do
    it { should belong_to(:posse) }
  end

  it "#find_or_create_from_auth" do
    auth = { "uid" => "12345",
             "info" => {"name" => "Mark Miranda", "image" => "test" },
             "credentials" => { "token": "abcde" }
           }
    expect{User.find_or_create_from_auth(auth)}.to change{ User.count }.by(1)
  end
end
