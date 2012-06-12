module Refinery
  module Fg
    class ReportsController < ::ApplicationController

      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @report in the line below:
        present(@page)
        @reports = Report.page(params[:page]).order("created_at DESC")
      end

      def show
        @report = Report.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @report in the line below:
        present(@page)
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fg/reports").first
      end

    end
  end
end
