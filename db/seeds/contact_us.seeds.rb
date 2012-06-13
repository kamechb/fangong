#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/contact_us$").empty?
  contact_us_page = Refinery::Page.create!(
    :title => "联系我们",
    :deletable => true,
    :link_url => "/contact_us",
    :menu_match => "^/contact_us$"
  )

  contact_us_body = <<-EOS
<div class="well clearfix">
  <div class="page-header"><h1>联系我们</h1></div>
  <div class="row">
    <div class="span4">
      <ul>
        <li>地址：杭州市江干区天城路168号蓝天城市花园</li>
        <li>邮编：310004</li>
        <li>联系电话：0571-88039985 0571-87175975</li>
        <li>
          <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=875913932&site=qq&menu=yes">
            <img border="0" src="http://wpa.qq.com/pa?p=2:875913932:42" alt="点击这里给我发消息" title="点击这里给我发消息">
          </a>
          <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=250838451&site=qq&menu=yes">
            <img border="0" src="http://wpa.qq.com/pa?p=2:250838451:42" alt="点击这里给我发消息" title="点击这里给我发消息">
          </a>
          <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1318024583&site=qq&menu=yes">
            <img border="0" src="http://wpa.qq.com/pa?p=2:1318024583:42" alt="点击这里给我发消息" title="点击这里给我发消息">
          </a>
        </li>
      </ul>
      <div class="imageContainer ">
        <img src="../img/contact/map.png" /> 
      </div>
      
    </div>
    <div class="span4">
      <div class="header2">
        <h2><span class="title title2">凡宫造型艺术机构乘车路线</span></h2>
      </div>
      <ul>
        <li>
          <h3 class="title3">杭州汽车南站</h3>
          乘坐516路到凯旋新村换成80路到文晖大桥东下车。
        </li>
        <li>
          <h3 class="title3">杭州汽车西站</h3>
          乘坐179路到文晖大桥东下车。
        </li>
        <li>
          <h3 class="title3">杭州汽车北站</h3>
          乘坐47路到文晖大桥东下车。
        </li>
        <li>
          <h3 class="title3">杭州城站</h3>
          乘坐185路到和平广场换成47/80/86路到文晖大桥东下车。
        </li>
        <li>
          <h3 class="title3">杭州火车南站</h3>
          乘坐537路到景芳五区换成105/86路到文晖大桥东下车。
        </li>
      </ul>
      <div class="notice">如果您打车请告诉司机上述路线</div>
    </div><!--span4-->
  </div><!--row-->
</div>
  EOS

  contact_us_page.parts.create(
    :title => 'body', 
    :body => contact_us_body,
    :position => 0 
  )
end

