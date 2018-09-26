FactoryBot.define do
  factory :movie do
    name { "MyString" }
    rating { 1 }
    year_of_release { 1 }
    genre { "MyString" }
    movie_list { nil }
  end
  factory :movie_list do
    name { "MyString" }
    user { nil }
  end
  factory :user do
    username { "MyString" }
    password { "MyString" }
  end
end
