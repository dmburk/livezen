# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    hashed_password "MyString"
    salt "MyString"
    first_name "MyString"
    last_name "MyString"
  end
end
