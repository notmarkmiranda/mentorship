require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before do
    posse = Posse.create(name: "No Posse")
    @user = User.create(uid: 17, name: "Mark Miranda", picture: "test", posse_id: posse.id)
    ApplicationController.any_instance.stub(:current_user).and_return(@user)
  end

  it "get show" do
    get :show, params: { id: @user.id }
    expect(response.status).to eq 200
    expect(assigns(:user)).to eq(@user)
    expect(response).to render_template(:show)
  end

  it "get edit" do
    get :edit, params: { id: @user.id }
    expect(response.status).to eq 200
    expect(assigns(:user)).to eq(@user)
    expect(response).to render_template(:edit)
  end

  it "put update" do
    put :update, params: { id: @user.id, user: { email: "test@example.com", slack_name: "@test", bio: "test bio" } }
    updated_user = User.find(@user.id)
    expect(response.status).to eq 302
    expect(assigns(:user)).to eq(@user)
    expect(response).to redirect_to(@user)
    expect(updated_user.email).to eq("test@example.com")
  end

  it "put update - sad path" do
    put :update, params: { id: @user.id, user: {email: "test@example.com", slack_name: "@test", bio: "test bio", name: "" } }
    expect(response).to render_template(:edit)
  end

end
