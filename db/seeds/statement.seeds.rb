#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/statement$").empty?
  statement_page = Refinery::Page.create!(
    :title => "商标声明",
    :deletable => true,
    :link_url => "/statement",
    :menu_match => "^/statement$"
  )

  statement_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>商标声明</h1>
  </div>
  <ul class="thumbnails">
		<li><img src="img/sangbiao1.png" /></li>
		<li><img src="img/sangbiao2.png" /></li>
	</ul>
	<p>凡宫、F&G，文字及徽标是杭州凡象文化创意有限公司在中国和/或其它国家（地区）的商标或注册商标。凡宫、F&G，文字及徽标为凡象文化创意有限公司注册商标或商标，受法律保护，杭州凡象文化创意有限公司拥有以上内容（包含但不限于）的专利、专利申请、商标。版权或其它知识产权。</p>
	<p>未经杭州凡象文化创意有限公司或商标权人书面许可，任何单位及个人不得以任何方式或理由对该商标的任何部分进行使用、复制、修改、传播、抄录或与其它产品捆绑使用销售。凡侵犯本公司商标权的，我公司必依法追究其法律责任。</p>
	<p>特此郑重法律声明！</p>
</div>
  EOS

  statement_page.parts.create(
    :title => 'body', 
    :body => statement_body,
    :position => 0 
  )
end

