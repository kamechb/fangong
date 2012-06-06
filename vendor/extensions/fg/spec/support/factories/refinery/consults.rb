
FactoryGirl.define do
  factory :consult, :class => Refinery::Fg::Consult do
    sequence(:user_name) { |n| "refinery#{n}" }
  end
end

