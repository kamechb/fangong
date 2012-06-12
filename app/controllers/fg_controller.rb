#encoding: utf-8
class FgController < ApplicationController
  def about_us
    @page = ::Refinery::Page.where(:slug => "about").first
  end

  def certificate
    @page = ::Refinery::Page.where(:slug => "资质证书").first
  end


end
