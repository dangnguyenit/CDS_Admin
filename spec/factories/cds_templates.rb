# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cds_template do
    name "MyString"
    status "MyText"
    title_group nil
    scoring_scale nil
  end
end
