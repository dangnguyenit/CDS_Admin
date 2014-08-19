# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instances_term do
    attitude "MyString"
    short_term "MyString"
    long_term_string "MyString"
    coach_plan "MyString"
    status "MyString"
    term nil
    instance nil
  end
end
