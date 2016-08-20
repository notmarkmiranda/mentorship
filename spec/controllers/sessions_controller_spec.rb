require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  before do
    @user = create(:user)
  end

  it "post create" do
    # process :create, method: :post, params
  end

end

# info = auth['info']
# credentials = auth['credentials']
#
# user = User.find_or_create_by(uid: auth['uid'])
# user.name = info['name']
# user.picture = info['image']
# user.token = credentials['token']
