
FactoryGirl.define do
  factory :activity, :class => Refinery::Fg::Activity do
    sequence(:desc) { |n| "refinery#{n}" }
  end
end

