FactoryGirl.define do
  factory(:user) do
    user_name 'Matt'
    email 'matthew.giem@gmail.com'
    password 'password'

    factory :user_with_image do
      after(:create) do |user|
        create(:image, user: user)
      end
    end
  end

  factory(:image) do
    title 'Bike'
    user_name 'Matt'
  end
end
