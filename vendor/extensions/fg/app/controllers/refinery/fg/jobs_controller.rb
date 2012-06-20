module Refinery
  module Fg
    class JobsController < ::ApplicationController

      before_filter :find_latest_jobs, :only => [:show]
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job in the line below:
        present(@page)
        @jobs = Job.page(params[:page]).order("created_at DESC")
      end

      def show
        @job = Job.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job in the line below:
        present(@page)
      end

    protected

      def find_latest_jobs
        @jobs = Job.order('created_at DESC').limit(5)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/jobs").first
      end

    end
  end
end
