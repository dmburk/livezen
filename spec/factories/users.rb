# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |user|
  	#user.id 1
    user.email "frodo@middle_earth.net"
    user.password "thering"
    user.first_name "Frodo"
    user.last_name "Baggins"
    #user.lists { |lists| [lists.association(:list)] }
  end
end
