# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	#id "1"
    email "frodo@middle_earth.net"
    password "thering"
    first_name "Frodo"
    last_name "Baggins"
  end
end
