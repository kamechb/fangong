#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/cooperation_sale$").empty?
  cooperation_sale_page = Refinery::Page.create!(
    :title => "合作与销售",
    :deletable => true,
    :link_url => "/cooperation_sale",
    :menu_match => "^/cooperation_sale$"
  )

  cooperation_sale_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>合作与销售</h1>
  </div>
  <ul>
    <li>剧团：头套、饰品、造型、服装</li>
    <li>演艺公司：整体造型、饰品、服装</li>
    <li>影楼：输送毕业学员、整体造型、饰品 、服装、发包、毛发类</li>
    <li>电影电视剧组：输送学员就业，实践、饰品出售、服装 、整体造型、发包、毛发类</li>
    <li>影视广告公司：学员实践、业务合作、化妆造型</li>
    <li>企业培训：形象设计包装、礼仪培训 、社交礼仪、化妆礼仪</li>
    <li>企业活动化妆业务（年会，晚会）</li>
  </ul>
</div>
  EOS

  cooperation_sale_page.parts.create(
    :title => 'body', 
    :body => cooperation_sale_body,
    :position => 0 
  )
end

