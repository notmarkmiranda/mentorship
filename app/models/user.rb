class User < ApplicationRecord
  validates :uid, presence: true, uniqueness: true
  validates :name, presence: true
  validates :picture, presence: true
  has_one :student
  belongs_to :posse

  def self.find_or_create_from_auth(auth)
    info = auth['info']
    credentials = auth['credentials']

    user = User.find_or_create_by(uid: auth['uid'])
    user.name = info['name']
    user.picture = info['image']
    user.token = credentials['token']
    user.save
    user
  end

end
