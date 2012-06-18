#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/cooperation_organization$").empty?
  cooperation_organization_page = Refinery::Page.create!(
    :title => "合作机构",
    :deletable => true,
    :link_url => "/cooperation_organization",
    :menu_match => "^/cooperation_organization$"
  )

  cooperation_organization_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>合作机构</h1>
  </div>
  <img src="../img/hezuo/11.png" />
</div>
  EOS

  cooperation_organization_page.parts.create(
    :title => 'body', 
    :body => cooperation_organization_body,
    :position => 0 
  )
end

