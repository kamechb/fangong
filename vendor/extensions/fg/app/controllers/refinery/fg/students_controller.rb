#encoding: utf-8
module Refinery
  module Fg
    class StudentsController < ::ApplicationController

      # before_filter :find_all_students
      # before_filter :find_page
      before_filter :find_professions, :only => [:new, :create]

      # def index
      #   # you can use meta fields from your model instead (e.g. browser_title)
      #   # by swapping @page for @student in the line below:
      #   present(@page)
      # end

      def show
        @student = Student.find(params[:id])
        @other_students = Student.where("feedback IS NOT NULL").
                                  where(:graduation => true).
                                  order("created_at DESC").
                                  limit(10)

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @student in the line below:
        present(@page)
      end

      def create
        @student = Student.new(params[:student])
        if @student.save
          flash.now[:notice] = ::I18n.t('flash.student_signup.success')
        else
          flash.now[:alert] = ::I18n.t('flash.student_signup.failure')
        end
        render :new 
      end

      def new
        @student = Student.new
      end
      
      def signup
        @students = Refinery::Fg::Student.page(params[:page]).where(:graduation => false).order("created_at DESC")
      end

      def feedback
        @students = Refinery::Fg::Student.page(params[:page]).where("feedback IS NOT NULL").where(:graduation => true)
      end

    protected

      def find_all_students
        @students = Student.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/fg/students").first
      end

      def find_professions
        @professions = Refinery::Fg::Profession.all
      end

    end
  end
end
