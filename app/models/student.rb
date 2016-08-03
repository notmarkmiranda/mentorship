class Student < ApplicationRecord
  validates :user_id, uniqueness: true
  belongs_to :user
  belongs_to :cohort

  def name
    user.name
  end

  def picture
    user.picture
  end

  def email
    user.email
  end

  def slack_name
    user.slack_name
  end

  def bio
    user.bio
  end

end
