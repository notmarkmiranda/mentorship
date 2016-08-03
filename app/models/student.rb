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



end
