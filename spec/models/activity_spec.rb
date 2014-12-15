require 'spec_helper'

describe Activity do
  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        activity = Activity.new(:title=> "Hello", :content=> "First Post", :adate =>DateTime.now)
        activity.should be_valid
      end

    end

  end
end








