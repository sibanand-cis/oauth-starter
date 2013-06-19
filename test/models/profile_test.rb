require "test_helper"

describe Profile do
  before do
    @profile = Profile.new
  end

  it "must be valid" do
    @profile.valid?.must_equal true
  end
end
