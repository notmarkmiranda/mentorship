require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  before do
    posse = Posse.create(name: "no posse")
    user = User.create(name: "Bob Jones",
                       email: "bob@jones.com",
                       bio: "this is my bio",
                       picture: "test",
                       posse_id: posse.id,
                       slack_name: "@bobjones",
                       uid: 12,
                       token: "abcdef")
    @cohort = Cohort.create(id: 1602)
    @student = Student.create(user_id: user.id,
                              cohort_id: @cohort.id,
                              active: true)
  end

  it "get index" do
    process :index, method: :get
    expect(response).to render_template("index")
    expect(assigns(:students)).to eq([@student])
  end

  it "get show" do
    process :show, method: :get, params: { id: @student.id }
    expect(response).to render_template("show")
    expect(assigns(:student)).to eq(@student)
  end

  it "get new" do
    process :new, method: :get
    expect(response).to render_template("new")
    expect(assigns(:student)).to_not be_nil
    expect(assigns(:cohorts)).to eq([@cohort])
  end

  it "post create" do
    user = create(:user)
    process :create, method: :post, params: { student: { cohort_id: @cohort.id, user_id: user.id }}
    expect(response).to redirect_to dashboard_path
  end

  it "get edit" do
    process :edit, method: :get, params: { id: @student.user_id }
    expect(response).to render_template("edit")
    expect(assigns(:student)).to eq(@student)
  end

  it "activates a student profile" do
    @student.update(active: false)
    expect(Student.last.active).to eq(false)

    process :activate, method: :get, params: { id: Student.last.user_id }
    expect(Student.last.active).to eq(true)
  end

  it "deactivates a student profile" do
    expect(Student.last.active).to eq(true)
    process :deactivate, method: :get, params: { id: Student.last.user_id }
    expect(Student.last.active).to eq(false)
  end
end
