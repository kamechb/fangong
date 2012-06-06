# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Fg" do
    describe "Admin" do
      describe "consults" do
        login_refinery_user

        describe "consults list" do
          before(:each) do
            FactoryGirl.create(:consult, :user_name => "UniqueTitleOne")
            FactoryGirl.create(:consult, :user_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.fg_admin_consults_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.fg_admin_consults_path

            click_link "Add New Consult"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "User Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Fg::Consult.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("User Name can't be blank")
              Refinery::Fg::Consult.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:consult, :user_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.fg_admin_consults_path

              click_link "Add New Consult"

              fill_in "User Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Fg::Consult.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:consult, :user_name => "A user_name") }

          it "should succeed" do
            visit refinery.fg_admin_consults_path

            within ".actions" do
              click_link "Edit this consult"
            end

            fill_in "User Name", :with => "A different user_name"
            click_button "Save"

            page.should have_content("'A different user_name' was successfully updated.")
            page.should have_no_content("A user_name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:consult, :user_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.fg_admin_consults_path

            click_link "Remove this consult forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Fg::Consult.count.should == 0
          end
        end

      end
    end
  end
end
