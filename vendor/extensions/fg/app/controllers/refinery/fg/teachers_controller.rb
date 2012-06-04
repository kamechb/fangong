module Refinery
  module Fg
    class TeachersController < ::ApplicationController

      before_filter :find_all_teachers
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @teacher in the line below:
        present(@page)
      end

      def show
        @teacher = Teacher.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @teacher in the line below:
        present(@page)
      end

    protected

      def find_all_teachers
        @teachers = Teacher.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fg/teachers").first
      end

    end
  end
end
