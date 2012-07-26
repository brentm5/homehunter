
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

  factory :hunt do |h|
    h.name "Name of Hunt"
    h.description "This is a description of a hunt"
  end
end
