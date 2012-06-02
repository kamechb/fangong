
FactoryGirl.define do
  factory :student, :class => Refinery::Fg::Student do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

