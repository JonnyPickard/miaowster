require 'rails_helper'

describe Endorsement, ".user_id", type: :model do
  it "validates the uniqueness of a user id" do
    @endorsement = create(:endorsement)

    subject { @endorsement }

    expect(subject).to validate_uniqueness_of(:user_id)
  end
end
