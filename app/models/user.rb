class User < ApplicationRecord
  validates :uid, presence: true, uniqueness: true
  validates :name, presence: true
  validates :picture, presence: true
  has_one :mentor
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

  def deactivate_student_profile
    student.update(active: false)
  end

  def activate_student_profile
    student.update(active: true)
  end

  def deactivate_mentor_profile
    mentor.update(active: false)
  end

  def activate_mentor_profile
    mentor.update(active: true)
  end

end
