
FactoryGirl.define do
  factory :teacher, :class => Refinery::Fg::Teacher do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

