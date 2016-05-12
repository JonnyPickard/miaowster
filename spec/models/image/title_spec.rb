require 'rails_helper'

describe Image, ".title" do
  it "validates the presence of a title" do
    test_title = "Test title"

    #setup
    image = create(:image, title: test_title)

    #exercise and verify
    expect(image.title).to eq test_title
  end
end
