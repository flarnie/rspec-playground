# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hat do
    color "MyString"
    type "top-hat"
    cat_id 1
  end
end
