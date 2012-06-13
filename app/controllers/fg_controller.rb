#encoding: utf-8
class FgController < ApplicationController
  # 定义通用的 page action
  {
    contact_us: '联系我们',
    declare: '凡宫声明',
    enviroment: '环境',
    partner_school: '合作伙伴',
    preferential: '学费优惠政策',
    privacy: '隐私声明',
    registration_instruction: '报名须知',
    statement: '商标声明'
  }.each do |page, slug|
    define_method(page) do
      @page = ::Refinery::Page.where(:slug => slug).first || ::Refinery::Page.where(:link_url => "/#{page}").first
      begin
        render page 
      rescue
        render :common_page
      end
    end
  end

  def about_us
    @page = ::Refinery::Page.where(:slug => "关于凡宫").first
  end

  def certificate
    @page = ::Refinery::Page.where(:slug => "资质证书").first
  end


end
