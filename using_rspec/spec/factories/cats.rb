# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cat do
    sequence :name do |n|
      fake_name = Faker::Name.name
      puts fake_name
      fake_name
    end
    sequence :color do
      ["red", "blue", "green", "yellow", "brown", "black", "white", "orange"].sample
    end
    sequence :age do
      (5..99).to_a.sample
    end
    sequence :temperment do
      ["happy", "silly", "cranky", "meow"].sample
    end
    
    # factory :cat_with_hat do
    #   association :hat, factory: :hat
    # end
    
    factory :cat_with_hat do
      sequence :hat do |n|
        FactoryGirl.create(:hat, :color => "black", :type => "top-hat #{n}")
      end
    end
    
    factory :kitten do
      age 0
    end
  end
end
