
FactoryGirl.define do
  factory :link, :class => Refinery::Fg::Link do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

