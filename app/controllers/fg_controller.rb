class FgController < ApplicationController
  def about_us
    @page = ::Refinery::Page.where(:slug => "about").first
  end

end
