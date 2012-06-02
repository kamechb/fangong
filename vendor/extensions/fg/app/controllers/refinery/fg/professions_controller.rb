module Refinery
  module Fg
    class ProfessionsController < ::ApplicationController

      before_filter :find_all_professions
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @profession in the line below:
        present(@page)
      end

      def show
        @profession = Profession.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @profession in the line below:
        present(@page)
      end

    protected

      def find_all_professions
        @professions = Profession.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/professions").first
      end

    end
  end
end
