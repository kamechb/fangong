require 'spec_helper'

module Refinery
  module Fg
    describe Consult do
      describe "validations" do
        subject do
          FactoryGirl.create(:consult,
          :user_name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:user_name) { should == "Refinery CMS" }
      end
    end
  end
end
