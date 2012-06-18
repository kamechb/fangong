#encoding: utf-8
class FgController < ApplicationController
  # 定义通用的 page action
  {
    contact_us:                   '联系我们',
    declare:                      '凡宫声明',
    # enviroment:                   '环境',
    # partner_school:               '合作伙伴',
    preferential:                 '学费优惠政策',
    privacy:                      '隐私声明',
    registration_instruction:     '报名须知',
    statement:                    '商标声明',
    # about_us:                     '关于凡宫'
    # cooperation_sale:             '合作与销售',
    # cooperation_organization:     '合作机构',
    # enterprise_training:          '企业培训'
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

  def certificate
    @page = ::Refinery::Page.where(:slug => "资质证书").first
  end



  def cooperation_organization
    # @page = ::Refinery::Page.where(:slug => "合作机构").first || ::Refinery::Page.where(:link_url => "/cooperation_organization" ).first
    # render :cooperation_sale
    @cooperations = Refinery::Fg::Link.where(:cooperation => true)
  end

  def cooperation_sale
    @page = ::Refinery::Page.where(:slug => "合作与销售").first || ::Refinery::Page.where(:link_url => "/cooperation_sale").first
  end

  def enterprise_training
    @page = ::Refinery::Page.where(:slug => "企业培训").first || ::Refinery::Page.where(:link_url => "/enterprise_training").first
    render :cooperation_sale
  end

  def about_us
    @page = ::Refinery::Page.where(:slug => "关于凡宫").first || ::Refinery::Page.where(:link_url => "/about_us").first
  end

  def enviroment
    @page = ::Refinery::Page.where(:slug => "环境").first || ::Refinery::Page.where(:link_url => "/enviroment").first
    render :about_us
  end

  def partner_school 
    @page = ::Refinery::Page.where(:slug => "合作院校").first || ::Refinery::Page.where(:link_url => "/partner_school").first
    render :about_us
  end


end
