require 'rails_helper'

describe User, ".email" do

  before(:each) do
    @test_email = "testemail@test.com"
    @user = create(:user, email: @test_email)
    @control_user = create(:user)
  end

  it "validates the presence of an email" do
    result = User.where(email: @test_email).first

    expect(@user.email).to eq @test_email
    expect(@control_user.email).not_to eq @test_email

    expect(@user).to eq result
  end

  it "validates the uniqueness of an email" do
    duplicate_user = build(:user, email: @test_email)
    expect(duplicate_user).to be_invalid
  end
end
