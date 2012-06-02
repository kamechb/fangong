module Refinery
  module Fg
    class WorksController < ::ApplicationController

      before_filter :find_all_works
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @work in the line below:
        present(@page)
      end

      def show
        @work = Work.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @work in the line below:
        present(@page)
      end

    protected

      def find_all_works
        @works = Work.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/works").first
      end

    end
  end
end
