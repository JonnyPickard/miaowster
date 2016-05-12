require 'rails_helper'

describe Image, ".description" do
  it "validates the presence of a description" do
    test_description = "Test description"

    #setup
    image = create(:image, description: test_description)

    #exercise and verify
    expect(image.description).to eq test_description
  end
end
