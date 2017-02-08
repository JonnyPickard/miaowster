require 'rails_helper'

feature "Commenting on an image" do
  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
  end
  scenario "A user can comment on an image which loads below the image" do
    sign_in
    create_image

    click_link "Trending"
    fill_in "Content", with: "Excellent"
    click_button "submit"

    expect(page).to have_content "Excellent"
  end
end
