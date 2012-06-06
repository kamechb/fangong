module Refinery
  module Fg
    class ConsultsController < ::ApplicationController

      before_filter :find_all_consults
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @consult in the line below:
        present(@page)
      end

      def show
        @consult = Consult.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @consult in the line below:
        present(@page)
      end

      def create
        @consult = Consult.new(params[:consult])
        if @consult.save
          flash.now[:notice] = ::I18n.t('flash.consult.success')
        else
          flash.now[:alert] = ::I18n.t('flash.consult.failure')
        end
        render :new 
      end

      def new
        @consult = Consult.new
      end


    protected

      def find_all_consults
        @consults = Consult.order('created_at DESC').limit(20)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/consults").first
      end

    end
  end
end
