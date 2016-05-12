FactoryGirl.define do
  factory :image, :class => "Image" do
    sequence(:user_id) { |n| "user_id#{n}" }
    sequence(:title) { |n| "test_title#{n}" }
    sequence(:description) { |n| "test_description#{n}" }
    picture { fixture_file_upload(Rails.root.join('spec', 'support', "test.jpg"), 'image/jpg') }
  end

  factory :user, :class => "User" do
    sequence(:email) { |n| "test@test#{n}.com" }
    sequence(:password) { |n| "testpassword#{n}" }
    sequence(:password_confirmation) { |n| "testpassword#{n}" }
  end
end
