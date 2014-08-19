# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    name "MyString"
    description "MyString"
    manager_id 1
    cds_template nil
  end
end
