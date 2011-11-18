# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list_share do
    list_id 1
    user_id 1
    write_access ""
  end
end
