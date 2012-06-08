# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Fg" do
    describe "Admin" do
      describe "activities" do
        login_refinery_user

        describe "activities list" do
          before(:each) do
            FactoryGirl.create(:activity, :desc => "UniqueTitleOne")
            FactoryGirl.create(:activity, :desc => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.fg_admin_activities_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.fg_admin_activities_path

            click_link "Add New Activity"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Desc", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Fg::Activity.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Desc can't be blank")
              Refinery::Fg::Activity.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:activity, :desc => "UniqueTitle") }

            it "should fail" do
              visit refinery.fg_admin_activities_path

              click_link "Add New Activity"

              fill_in "Desc", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Fg::Activity.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:activity, :desc => "A desc") }

          it "should succeed" do
            visit refinery.fg_admin_activities_path

            within ".actions" do
              click_link "Edit this activity"
            end

            fill_in "Desc", :with => "A different desc"
            click_button "Save"

            page.should have_content("'A different desc' was successfully updated.")
            page.should have_no_content("A desc")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:activity, :desc => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.fg_admin_activities_path

            click_link "Remove this activity forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Fg::Activity.count.should == 0
          end
        end

      end
    end
  end
end
