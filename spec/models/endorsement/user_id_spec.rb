require 'rails_helper'

describe Endorsement, ".image_id", type: :model do
  it { is_expected.to validate_presence_of(:image_id) }
end
