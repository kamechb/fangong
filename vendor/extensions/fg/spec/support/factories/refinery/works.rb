
FactoryGirl.define do
  factory :work, :class => Refinery::Fg::Work do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

