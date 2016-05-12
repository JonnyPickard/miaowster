require 'rails_helper'

describe Image, ".user_id" do
  it "returns only the image with the correct id" do
    #setup
    image = create(:image, user_id: 2)
    control_image = create(:image, user_id: 4)

    #exercise
    result = Image.where(user_id: 2)

    #verify
    expect(result).to eq [image]
  end
end
