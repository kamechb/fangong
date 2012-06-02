# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Fg" do
    describe "Admin" do
      describe "reports" do
        login_refinery_user

        describe "reports list" do
          before(:each) do
            FactoryGirl.create(:report, :title => "UniqueTitleOne")
            FactoryGirl.create(:report, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.fg_admin_reports_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.fg_admin_reports_path

            click_link "Add New Report"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Fg::Report.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Fg::Report.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:report, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.fg_admin_reports_path

              click_link "Add New Report"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Fg::Report.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:report, :title => "A title") }

          it "should succeed" do
            visit refinery.fg_admin_reports_path

            within ".actions" do
              click_link "Edit this report"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:report, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.fg_admin_reports_path

            click_link "Remove this report forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Fg::Report.count.should == 0
          end
        end

      end
    end
  end
end
