# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    #id 1
    name "The Ring"
  end  


  # Couldn't get this example to work
  # factory :list do |list|
  #   list.sequence(:name) {|n| "List#{n}"}

  #   def list.user
  #     @user ||= Factory(:user)
  #   end

  #   list.user_id { list.user.id }
  # end

  # factory :list_with_list_share, :parent => :list do |list|
  #   list.after_create { |l| Factory(:list_share, :list => l)}
  # end
end
