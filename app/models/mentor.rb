class Mentor < ApplicationRecord
  belongs_to :user
  belongs_to :mentor_timezone

  validates :location, presence: true
  validates :mentor_timezone, presence: true
  validates :user, presence: true

  def name
    user.name
  end

  def timezone
    mentor_timezone.name
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
end
