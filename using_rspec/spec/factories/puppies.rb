
FactoryGirl.define do
  factory :puppy do
    sequence :name do |n|
      Faker::Name.name
    end
  end
end
