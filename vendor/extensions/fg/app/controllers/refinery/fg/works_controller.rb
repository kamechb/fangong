module Refinery
  module Fg
    class WorksController < ::ApplicationController

      before_filter :find_page
      before_filter :find_categories

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @work in the line below:
        present(@page)

        @works = Work.page(params[:page]).order("created_at DESC")
        @works = @works.tagged_with(params[:category]) if params[:category].present?
      end

      def research
        @works = Work.where(:research => true)
      end

      def show
        @work = Work.find(params[:id])

        #@works = Work.all
        #@works = Work.tagged_with(@work.tag_list)
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @work in the line below:
        present(@page)
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fg/works").first
      end

      def find_categories
        @work_categories = Work.all_categories
      end

    end
  end
end
