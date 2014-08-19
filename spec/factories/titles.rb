# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :title do
    name "MyString"
    short_name "MyString"
    value 1
    title_group nil
  end
end
