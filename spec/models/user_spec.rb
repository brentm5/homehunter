require 'spec_helper'

describe User do

  #default factory
  it "Should have a valid factory" do
    build(:user).should be_valid
  end


  #Validators
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }


  #Custom methods
  it "Should have a name method that returns the full name" do
    user = build(:user)
    user.name.should  eql "#{user.first_name} #{user.last_name}"
  end

end

