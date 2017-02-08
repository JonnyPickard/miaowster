require 'rails_helper'

describe Image, ".picture" do
  it "validates the presence of a picture" do
    #setup
    image = create(:image)

    #exercise and verify
    expect(image.picture_file_name).to eq "test.jpg"
    expect(image.picture_content_type).to eq "image/jpeg"
  end
end
