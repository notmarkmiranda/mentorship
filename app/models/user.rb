class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :picture, presence: true
  belongs_to :posse

  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(uid: auth['uid'])
  end
end
