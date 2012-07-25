# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hunt do |h|
    h.name "Name of Hunt"
    h.description "This is a description of a hunt"
  end
end
