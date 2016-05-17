require 'rails_helper'

feature "Edorsing Images" do
  scenario "A user can endorse an image, which updates the image endorsement count" do
    sign_in
    create_image

    click_link "Endorse Image 1"

    expect(page).to have_content("1 endorsement")
  end
end
