require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before do
    @user = User.create(uid: 17, name: "Mark Miranda", picture: "test")
    ApplicationController.any_instance.stub(:current_user).and_return(@user)
  end

  it "get show" do
    get :show
    expect(response.status).to eq 200
    expect(assigns(:user)).to eq(@user)
    expect(response).to render_template(:show)
  end

end
