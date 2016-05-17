require 'rails_helper'

feature "Edorsing Images" do
  xscenario "A user can endorse an image, which updates the image endorsement count" do
    sign_in
    create_image

    click_link "Endorse Image 1"

    expect(page).to have_content("1 endorsement")
  end

  scenario "A user can only endorse an image once" do
    sign_in
    create_image

    click_link "Endorse Image 1"
    click_link "Endorse Image 1"

    expect(page).to have_content("1 endorsement")
  end
end