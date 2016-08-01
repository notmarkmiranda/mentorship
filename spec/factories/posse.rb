FactoryGirl.define do
  factory :posse do
    sequence :name do |n|
      "name #{n}"
    end
    bio "posse bio"
  end
end
