require 'rails_helper'

RSpec.describe MentorsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #activate" do
    before do
      posse = Posse.create(name: "no posse")
      user = User.create(name: "Mark", uid: 123, picture: "picture", posse_id: posse.id)
      tz = MentorTimezone.create(name: "MT")
      @mentor = Mentor.create(user_id: user.id, location: "Denver", bio: "bio", mentor_timezone_id: tz.id)
    end

    it "deactivates and reactivates" do
      process :deactivate, method: :get, params: {id: @mentor.id}
      expect(Mentor.last.active).to eq(false)
      process :activate, method: :get, params: {id: @mentor.id}
      expect(Mentor.last.active).to eq(true)
    end
  end



end
