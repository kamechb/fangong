
FactoryGirl.define do
  factory :propaganda, :class => Refinery::Fg::Propaganda do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

