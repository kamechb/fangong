module Refinery
  module Fg
    class PropagandasController < ::ApplicationController

   #    before_filter :find_all_propagandas
   #    before_filter :find_page

   #    def index
   #      # you can use meta fields from your model instead (e.g. browser_title)
   #      # by swapping @page for @propaganda in the line below:
   #      present(@page)
   #    end

   #    def show
   #      @propaganda = Propaganda.find(params[:id])

   #      # you can use meta fields from your model instead (e.g. browser_title)
   #      # by swapping @page for @propaganda in the line below:
   #      present(@page)
   #    end

   #  protected

   #    def find_all_propagandas
   #      @propagandas = Propaganda.order('position ASC')
   #    end

   #    def find_page
   #      @page = ::Refinery::Page.where(:link_url => "/propagandas").first
   #    end

    end
  end
end
