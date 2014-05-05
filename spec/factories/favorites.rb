# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :favorite do
    restaurant "MyText"
    name "MyText"
    price 1.5
    address "MyString"
    phone_number 1
    user nil
  end
end
