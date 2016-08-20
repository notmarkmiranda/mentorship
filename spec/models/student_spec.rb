require 'rails_helper'

RSpec.describe Student, type: :model do
  before do
    @user = create(:user)
    @student = Student.create(user_id: @user.id)
  end

  context "validations" do
    # it { should validate_uniqueness_of :user_id }
  end

  context "relationships" do
    it { should belong_to(:cohort) }
  end

  it "#name" do
    expect(@student.name).to eq(@user.name)
  end

  it "#picture" do
    expect(@student.picture).to eq(@user.picture)
  end

  it "#email" do
    expect(@student.email).to eq(@user.email)
  end

  it "#slack_name" do
    expect(@student.slack_name).to eq(@user.slack_name)
  end

  it "#bio" do
    expect(@student.bio).to eq(@user.bio)
  end


end
