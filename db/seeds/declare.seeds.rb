#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/declare$").empty?
  declare_page = Refinery::Page.create!(
    :title => "凡宫声明",
    :deletable => true,
    :link_url => "/declare",
    :menu_match => "^/declare$"
  )

  declare_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>凡宫声明</h1>
  </div>
  <p class="indent">尊敬的用户,您好!</p>
  <p class="indent">凡宫造型艺术机构为确保网站内文字信息和图片信息的使用安全和版权等问题，特提出以下声明：</p>
  <p class="indent">凡宫造型艺术机构网站包含之所有内容：文本、图形、LOGO、创意等之所有权归属凡宫造型艺术机构及本网站的内容、信息提供者，受中国及国际版权法的保护。其他媒体(包括网络媒体和传统媒体)转摘本网原创稿件时，须在明显位置注名信息来源：凡宫造型艺术机构官方网站，如需转载由其他网站提供的信息内容时，请与原作者取得联系。</p>
  <p class="indent">凡宫造型艺术机构网站及其任何组成部分不得被再造、复制、抄袭、交易，或为任何未经凡宫造型艺术机构官方网站允许的商业目的所使用。如果凡宫造型艺术机构官方网站确定对方行为违法或有损其网站和企业的利益，则凡宫造型艺术机构官方网站将保留追究相关责任企业或责任人的权利。</p>
  <p class="indent">我们将尽一切努力，为广大网友创造一个绿色、健康、和谐的网络空间。同时，我们也真诚的希望广大网友对我们的工作进行监督。</p>
</div>
  EOS

  declare_page.parts.create(
    :title => 'body', 
    :body => declare_body,
    :position => 0 
  )
end

