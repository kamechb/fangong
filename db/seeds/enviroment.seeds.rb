#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/enviroment$").empty?
  enviroment_page = Refinery::Page.create!(
    :title => "环境",
    :deletable => true,
    :link_url => "/enviroment",
    :menu_match => "^/enviroment$"
  )

  enviroment_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>环境</h1>
  </div>
  <p>凡宫造型紧邻市中心，坐落在江干区一处幽静的天地，学区设有现代化设施齐全的教学区和活动露台，让每个凡宫学员感受大家庭的氛围。</p>
  <ul class="thumbnails">
    <li><img src="../img/envs/2.png" /></li>
    <li><img src="../img/envs/3.png" /></li>
    <li><img src="../img/envs/1.png" /></li>
  </ul>
</div>
  EOS

  enviroment_page.parts.create(
    :title => 'body', 
    :body => enviroment_body,
    :position => 0 
  )
end

