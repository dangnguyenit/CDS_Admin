# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :term do
    name "MyString"
    start_date "2014-04-10"
    end_date "2014-04-10"
    start_assess_date "2014-04-10"
    end_assess_date "2014-04-10"
    status "MyString"
  end
end
