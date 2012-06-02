
FactoryGirl.define do
  factory :profession, :class => Refinery::Fg::Profession do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

