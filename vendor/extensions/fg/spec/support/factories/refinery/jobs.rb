
FactoryGirl.define do
  factory :job, :class => Refinery::Fg::Job do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

