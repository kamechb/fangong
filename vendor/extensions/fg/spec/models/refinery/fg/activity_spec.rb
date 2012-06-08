require 'spec_helper'

module Refinery
  module Fg
    describe Activity do
      describe "validations" do
        subject do
          FactoryGirl.create(:activity,
          :desc => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:desc) { should == "Refinery CMS" }
      end
    end
  end
end
