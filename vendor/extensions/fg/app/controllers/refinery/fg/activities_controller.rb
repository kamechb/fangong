module Refinery
  module Fg
    class ActivitiesController < ::ApplicationController

      before_filter :find_all_activities
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @activity in the line below:
        present(@page)
      end

      def show
        @activity = Activity.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @activity in the line below:
        present(@page)
      end

    protected

      def find_all_activities
        @activities = Activity.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/activities").first
      end

    end
  end
end
