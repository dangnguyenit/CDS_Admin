# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instance_title do
    title_id 1
    rank_id 1
    override_title_id 1
    pass_all_competencies false
    instances_term_id nil
  end
end
