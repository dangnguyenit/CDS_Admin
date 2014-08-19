# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    comment "MyText"
    user nil
    slot_assess nil
  end
end
