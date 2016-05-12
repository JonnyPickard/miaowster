require 'rails_helper'

describe User, ".password" do

  before(:each) do
    @test_password = "fakepassword"
    @invalid_password_confirmation = "invalid"
  end

  it "validates the presence of a password" do
    user = create(:user, password: @test_password, password_confirmation: @test_password)
    expect(user.password).to eq @test_password
  end

  it "validates the password confirmation matches the password" do
    user = build(:user, password: @test_password, password_confirmation: @invalid_password_confirmation)
    expect(user).to be_invalid
  end
end
