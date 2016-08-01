FactoryGirl.define do
  factory :user do
    sequence :name do |n|
      "username #{n}"
    end
    sequence :email do |n|
      "email#{n}@example.com"
    end
    slack_name "@user"
    posse
    picture "picture"
    sequence :uid do |n|
      n
    end
  end
end
