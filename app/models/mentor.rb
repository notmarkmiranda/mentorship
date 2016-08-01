class Mentor < ApplicationRecord
  belongs_to :user
  belongs_to :mentor_timezone

  def name
    user.name
  end

  def timezone
    mentor_timezone.name
  end

  def picture
    user.picture
  end
end
