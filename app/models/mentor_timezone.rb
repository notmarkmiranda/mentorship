class MentorTimezone < ApplicationRecord
  validates :name, uniqueness: true
end
