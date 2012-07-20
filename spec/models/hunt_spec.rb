require 'spec_helper'

describe Hunt do

  #default factory
  it "Should have a valid factory" do
    build(:hunt).should be_valid
  end

  #Validators
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }

end
