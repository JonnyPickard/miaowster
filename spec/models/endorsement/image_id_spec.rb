require 'rails_helper'

describe Endorsement, ".user_id", type: :model do
  it { is_expected.to validate_uniqueness_of(:user_id) }
end
