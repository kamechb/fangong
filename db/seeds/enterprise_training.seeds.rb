#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/enterprise_training$").empty?
  enterprise_training_page = Refinery::Page.create!(
    :title => "企业培训",
    :deletable => true,
    :link_url => "/enterprise_training",
    :menu_match => "^/enterprise_training$"
  )

  enterprise_training_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>企业培训</h1>
  </div>
  <div class="header2"><h2><span class="title title2">形象设计包装</span></h2></div>
  <div class="header2"><h2><span class="title title2">礼仪培训</span></h2></div>
  <div class="header2"><h2><span class="title title2">社交礼仪</span></h2></div>
  <div class="header2"><h2><span class="title title2">化妆礼仪</span></h2></div>
</div>
  EOS

  enterprise_training_page.parts.create(
    :title => 'body', 
    :body => enterprise_training_body,
    :position => 0 
  )
end

