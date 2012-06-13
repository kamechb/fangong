#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/preferential$").empty?
  preferential_page = Refinery::Page.create!(
    :title => "学费优惠政策",
    :deletable => true,
    :link_url => "/preferential",
    :menu_match => "^/preferential$"
  )

  preferential_body = <<-EOS
<div class="well">
	<div class="page-header">
		<h1>学费优惠政策</h1>
	</div>
	<div class="header2"><h2><span class="title title2">课程费用优惠政策</span></h2></div>
	<table class="table">
	  <thead>
		<tr>
		  <th>课程</th>
		  <th>价格</th>
		  <th>优惠</th>
		</tr>
	  </thead>
	  <tbody>
		<tr>
		  <td>彩妆造型课程</td>
		  <td>2280元</td>
		  <td>7折优惠：1580元 </td>
		</tr>
		<tr>
		  <td>影楼精英化妆课</td>
		  <td>3580元</td>
		  <td>7.5折优惠：2680元</td>
		</tr>	
		<tr>
		  <td>时尚全能彩妆课程</td>
		  <td>5980元</td>
		  <td>7折优惠：4180元</td>
		</tr>	
		<tr>
		  <td>影视剧组就业课程</td>
		  <td>9800元</td>
		  <td>8折优惠：7800元</td>
		</tr>	
		<tr>
		  <td>影视人物造型课程</td>
		  <td>19800元</td>
		  <td>7折优惠：13800元</td>
		</tr>
		<tr>
		  <td>化妆师-美术课程</td>
		  <td>3200元</td>
		  <td>8折优惠：2560元</td>
		</tr>		
																																
	  </tbody>
	</table>
	<p class="notice">白领班两人报名9折优惠，3-5人报名8折优惠</p>

	<div class="header2"><h2><span class="title title2">凡宫造型达人活动</span></h2></div>
	<p>凡宫造型艺术机构，六月份起将推出《造型达人》活动，每月推出三个免费名额，由凡宫艺术机构专业的化妆造型团队、摄影团队、后期团队、会根据您的个人气质、形象、为您量身定制属于您独有的或时尚或古装或经典人物造型作品，结束之后赠送底片，不参与任何印刷制作工序，选出的优秀美女将得到各种广告代言的推荐机会。名额有限！美女们，你们还等什么！快快行动吧！</p>
</div>
  EOS

  preferential_page.parts.create(
    :title => 'body', 
    :body => preferential_body,
    :position => 0 
  )
end

