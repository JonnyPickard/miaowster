require 'rails_helper'

feature "User can view home page" do
  scenario "No pictures have been uploaded" do
    sign_in

    click_link "Home"

    expect(current_path).to eq(home_index_path)
    expect(page).to have_content("No pictures have been uploaded yet!")
  end
end
