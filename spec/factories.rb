FactoryGirl.define do
  factory :image do
    sequence(:user_id) { |n| "user_id#{n}" }
    sequence(:title) { |n| "test_title#{n}" }
    sequence(:description) { |n| "test_description#{n}" }
    picture { fixture_file_upload(Rails.root.join('spec', 'support', "test.jpg"), 'image/jpg') }
  end

  factory :user, :class => "User" do
    email "test@test.com"
    password "testpassword"
    password_confirmation "testpassword"
  end
end
