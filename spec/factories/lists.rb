# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    id "1"
    name "Fellowship"
  end

  # factory :list_with_list_share, :parent => :list do |list|
  #   list.after_create { |l| Factory(:list_share, :list => l)}
  # end
end
