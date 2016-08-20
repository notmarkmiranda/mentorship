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

  it "change active student profile" do
    user = create(:user)
    cohort = Cohort.create(id: 1602)
    student = Student.create(user_id: user.id, cohort_id: cohort.id)
    expect(student.active).to eq(true)

    user.deactivate_student_profile
    updated_user = User.last
    expect(updated_user.student.active).to eq(false)

    user.activate_student_profile
    updated_user = User.last
    expect(updated_user.student.active).to eq(true)
  end

  it "change active mentor profile" do
    user = create(:user)
    tz = MentorTimezone.create(name: "MT")
    mentor = Mentor.create(user_id: user.id, location: "Denver", bio: "Bio", mentor_timezone_id: tz.id)
    expect(mentor.active).to eq(true)

    user.deactivate_mentor_profile
    updated_user = User.last
    expect(updated_user.mentor.active).to eq(false)

    user.activate_mentor_profile
    updated_user = User.last
    expect(updated_user.mentor.active).to eq(true)
  end
end
