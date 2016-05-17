require 'rails_helper'

describe Endorsement, ".image_id", type: :model do
  it "validates the uniqueness of a user id" do
    @endorsement = create(:endorsement)

    subject { @endorsement }

    expect(subject).to validates_presence_of(:image_id)
  end
end
