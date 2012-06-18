#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/about_us$").empty?
  about_us_page = Refinery::Page.create!(
    :title => "关于凡宫",
    :deletable => true,
    :link_url => "/about_us",
    :menu_match => "^/about_us$"
  )

  about_us_body = <<-EOS
<div class="well">
  <div class="page-header"><h1>关于凡宫</h1></div>
  
    <p>凡宫造型培训机构，创立于2008年</p>
    <p>原张菁化妆培训机构，基于文化理念的提升而更名</p>
    <p>与北京电影制片厂天宇影视化妆培训学校共同打造浙江最具实力的影视化妆培训机构</p>
    <p>我们拥有最前线的专业讲师团队</p>
    <p>我们是时尚领域中充满激情和专业精神的团队</p>
    <p>我们提供关于化妆的各种知识：美术基础，服装设计，平面设计，色彩搭配，面具文化，影视美学，品牌鉴赏，国际礼仪，古典文化等。。</p>
    <p>我们的宗旨是打造行业最精英的人士</p>
  


  <div class="header2"><h2><span class="title title2">环境</span></h2></div>
  <p>凡宫造型是一处大隐隐与市的安静天地，富有艺术氛围的时尚会所，设有学员休闲区，和活动露台，让每个凡宫学员感受大家庭的氛围</p>


  <div class="header2"><h2><span class="title title2">学习</span></h2></div>
  <p>设有影视人物造型培训，影视剧组化妆就业培训、形象设计培训、影楼新娘化妆培训，职业白领化妆培训、专业美甲培训等专业培训课程</p>
  <p>教学设备先进，有投影设备，影像器材设备，各种模型工具，制作材料</p>
  <p>每个课程均备有最权威、最新、最贴合实践的理论知识，现场实操授课，零距离观看每个细节，实操课由讲师亲手指导</p>

  <div class="header2"><h2><span class="title title2">机遇</span></h2></div>          
  <p>凡宫提供每位学员大量的实践机会，如电影电视，舞台戏剧，大型活动，电视台节目，平面广告，新娘跟妆等、并且根据不同实际情况给予有偿回报</p>
  <p>每个特定时间都会举办主题性时尚发布酒会，邀请众多摄影机构，影视媒体朋友，行业人士到场，为学员搭建职业平台，扩展学员的交际圈</p>

  
  <div class="header2"><h2><span class="title title2">保证</span></h2></div>          
  <p>毕业后，按不同课程推荐不同数额的就业机会，并得到源源不断的技术支持，学校是学员的坚实后盾，2年内免费复修。</p>
  <p>5个月以上课程均签约教学，在遵守学校各规章制度的同时享受更多更高更优越的学习保证和就业保证</p>
  
  
  <div class="header2"><h2><span class="title title2">证书</span></h2></div>          
  <p>学员可在校考取劳动部高级化妆师资格等级证书，国际化妆师协会高级化妆师证书，工商联色彩形象设计师证书</p>
  <p>毕业后不同阶段可以考取国家承认大学本科学历证书，国家承认形象设计专业大专证书</p>

  <div class="header2"><h2><span class="title title2">张菁</span></h2></div>          
  <p>凡宫造型艺术顾问，原张菁化妆培训机构创办人，演员出生的张菁老师对化妆接触早在九十年代中期，任浙江越剧团化妆造型师，和我国著名化妆大师：兰玲、毛戈平、王玲英是一起共事多年，张菁老师凭借对化妆的热爱，和对化妆造型的独特见解,自己琢磨，钻研，使自己的化妆造型水平得到行业内广泛认可。    </p>
</div>
  EOS

  about_us_page.parts.create(
    :title => 'body', 
    :body => about_us_body,
    :position => 0 
  )
end

