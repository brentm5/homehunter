# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@email.com"
  end


  
  factory :user do |u|
    u.email
    u.password  'password'
    u.password_confirmation 'password'
    u.first_name 'Jane'
    u.last_name 'Doe'
  end
end
