# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Fg" do
    describe "Admin" do
      describe "teachers" do
        login_refinery_user

        describe "teachers list" do
          before(:each) do
            FactoryGirl.create(:teacher, :name => "UniqueTitleOne")
            FactoryGirl.create(:teacher, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.fg_admin_teachers_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.fg_admin_teachers_path

            click_link "Add New Teacher"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Fg::Teacher.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Fg::Teacher.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:teacher, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.fg_admin_teachers_path

              click_link "Add New Teacher"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Fg::Teacher.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:teacher, :name => "A name") }

          it "should succeed" do
            visit refinery.fg_admin_teachers_path

            within ".actions" do
              click_link "Edit this teacher"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:teacher, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.fg_admin_teachers_path

            click_link "Remove this teacher forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Fg::Teacher.count.should == 0
          end
        end

      end
    end
  end
end
