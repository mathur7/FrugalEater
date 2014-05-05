# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :menuitem do
    restaurant "MyText"
    name "MyText"
    price 1.5
  end
end
