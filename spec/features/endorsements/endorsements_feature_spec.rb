require 'rails_helper'

feature "Edorsing Images" do

  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
  end

  scenario "A user can endorse an image, which updates the image endorsement count" do
    sign_in
    create_image

    visit "home"

    find("#endorse_1").click

    expect(page).to have_content("1 endorsement")
  end

  scenario "A user can only endorse an image once" do
    sign_in
    create_image

    visit "home"

    find("#endorse_1").click
    find("#endorse_1").click

    expect(page).to have_content("1 endorsement")
  end
end
