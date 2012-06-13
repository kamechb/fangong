#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/registration_instruction$").empty?
  registration_instruction_page = Refinery::Page.create!(
    :title => "隐私声明",
    :deletable => true,
    :link_url => "/registration_instruction",
    :menu_match => "^/registration_instruction$"
  )

  registration_instruction_body = <<-EOS
<div class="well">
	<div class="page-header">
		<h1>入学报名须知</h1>
	</div>
	<p class="notice">请各位学员在入学前，仔细阅读报名须知，一旦办理完报名手续，我们将视作您已阅读并认可下属内容</p>
	<ul class="list">
		<li>年满16周岁以上，无辨色类疾病、身体健康，遵守国家法律法规及其他管理规定、服从教学管理，能保证时间系统学习。未满16周岁的必须由监护人陪同报名;</li>
		<li>入学前如实填写《学员报名表》，并缴纳200元报名费用（可通过银行汇款缴纳报名费）;</li>
		<li>学员入学时需提供本人身份证复印件2张、近期1寸免冠照4张，签订《学生入学协议》，并交齐学费余款。无特殊情况,学校不予办理转班或退款手续;</li>
		<li>学员报名后因故无法前来上课，请与报到前5天电话通知。30个工作日内办理退学退费手续，否则报名费不予退还。学员报到后已领取教材并进入课堂上课，三天内因故退学，退还学费的60%，超过三天的，学费一律不予退还。</li>
	</ul>
	<div class="header2"><h2><span class="title title2">学员住宿</span></h2></div>
	<p>
紫薇公寓是一所高档住宅小区，步行到凡宫造型需要15分钟，小区环境高档优雅，富有艺术气息。有大房间和小房间，费用为350元/月左右，包水电费、物业管理费，费用按月结算，提供空调、热水器、无线宽带。外来学员带好换洗衣服，随身物品即可。</p>
	<div class="header2"><h2><span class="title title2">汇款方式</span></h2></div>
	<ul>
		<li>开户名：***</li>
		<li>**银行  卡号：**********8</li>
	</ul>
</div>
  EOS

  registration_instruction_page.parts.create(
    :title => 'body', 
    :body => registration_instruction_body,
    :position => 0 
  )
end

