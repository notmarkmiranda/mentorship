require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  before do
    user = User.create(name: "Bob Jones",
                       email: "bob@jones.com",
                       bio: "this is my bio",
                       picture: "test",
                       posse_id: 1,
                       slack_name: "@bobjones",
                       uid: 12,
                       token: "abcdef")
    cohort = Cohort.create(id: 1602)
    @student = Student.create(user_id: user.id,
                              cohort_id: cohort.id)
  end

  it "get index" do
    # get :index
    # expect(assigns(:students)).to eq([@student])
  end
end
