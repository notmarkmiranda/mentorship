class Mentor < ApplicationRecord
  belongs_to :user
  belongs_to :mentor_timezone
end
