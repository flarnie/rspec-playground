# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    session_token "MyString"
    password_hash "MyString"
  end
end
