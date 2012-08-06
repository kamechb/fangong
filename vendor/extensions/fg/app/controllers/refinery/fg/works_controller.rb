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
        @category_name = @work.tags.limit(1).first.try(:name)

        if @category_name
          @category_works = Work.tagged_with(@category_name).order("created_at DESC").limit(50).all
        else
          @category_works = [@work]
        end

        # @next_work = Work.where("id > ?", params[:id]).limit(1).first
        # @pre_work = Work.where("id < ?", params[:id]).order("id DESC").limit(1).first
        # @other_works = [@pre_work, @next_work].compact

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
