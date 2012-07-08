module Refinery
  module Fg
    class ReportsController < ::ApplicationController

      before_filter :find_page
      before_filter :find_latest_reports, :only => [:show]
      before_filter :find_categories

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @report in the line below:
        present(@page)
        @reports = Report.page(params[:page]).order("created_at DESC")
        @reports = @reports.tagged_with(params[:category]) if params[:category].present?
      end

      def show
        @report = Report.find(params[:id])

        # @reports = Report.order('position ASC')
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @report in the line below:
        present(@page)
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fg/reports").first
      end

      def find_latest_reports
        @reports = Report.order("created_at DESC").limit(8)
      end

      def find_categories
        @report_categories = Report.all_categories
      end

    end
  end
end
