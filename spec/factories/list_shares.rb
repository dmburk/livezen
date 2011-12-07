# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  # factory :list_share do |ls|
  #   ls.user { |a| a.association(:user) }
  #   ls.list { |a| a.association(:list) }
  #   #list_id 1
  #   #user_id 1
  #   owner false
  #   write_access ""

  factory :list_share do
    owner "false"
    write_access ""
    association :user, :factory => :user
    association :list, :factory => :list, :method => :build
  end
end
