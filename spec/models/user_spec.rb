require 'spec_helper'

describe User do

  it "Should have a valid factory" do
    build(:user).should be_valid
  end

  it {should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
end
