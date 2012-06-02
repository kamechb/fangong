
FactoryGirl.define do
  factory :report, :class => Refinery::Fg::Report do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

