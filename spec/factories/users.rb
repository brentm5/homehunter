# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |u|
    u.email "test@email.com"
    u.password  "password"
    u.password_confirmation "password"
  end
end
