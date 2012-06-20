#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/team$").empty?
  team = Refinery::Page.create!(
    :title => "团队",
    :link_url => "/team",
    :menu_match => "^/team$"
  )

  team_body = <<-EOS
<div class="well clearfix">
  <div class="teacher">
    <div class="imageContainer pull-left"><img width="130" src="../img/term/nana.png" alt="娜娜" title="娜娜"/></div>
    <h2>娜娜<small>影视化妆师</small></h2>
    <ul class="jobTitle">
      <li>多年影视剧组跟妆经验</li>
    </ul>
    <div class="works ">
      <span class="pull-left">影视作品:</span>
      <ul>
        <li>《沉默•河》</li>
        <li>《玛丽的天使》</li>
        <li>《流氓》</li>
      </ul>
    </div>
    <div class="works">
      <span class="pull-left">广告:</span>
      <ul>
        <li>《青花瓷》</li>
        <li>《阿里巴巴》</li>
      </ul>       
    </div>          
    <p>擅长时尚妆容</p>
  </div>
</div>  <!--well--> 
<div class="well clearfix">
  <div class="teacher">
    <div class="imageContainer pull-left"><img width="130" src="../img/term/weihua.png" alt="卫华" title="卫华"/></div>
    <h2>卫华<small>高级化妆师</small></h2>
    <ul class="jobTitle">
      <li>有着丰富的影视剧组化妆经验</li>
    </ul>
    <div class="works ">
      <span class="pull-left">影视作品:</span>
      <ul>
        <li>《南少林》</li>
        <li>《陆游与唐婉》</li>
      </ul>
    </div>

  </div>
</div>  <!--well-->   
<div class="well clearfix">
  <div class="teacher">
    <div class="imageContainer pull-left"><img width="130" src="../img/term/xiaoyi.png" alt="小怡" title="小怡"/></div>
    <h2>小怡<small>高级化妆师</small></h2>
    <ul class="jobTitle">
      <li>丰富的时尚广告化妆经验</li>
    </ul>
    <p>擅长各种时尚造型</p>

  </div>
</div>  <!--well-->     

<div class="well clearfix">
  <div class="teacher">
    <div class="imageContainer pull-left"><img width="130" src="../img/term/shanshan.png" alt="闪闪" title="闪闪"/></div>
    <h2>闪闪<small>高级造型师</small></h2>
    <ul class="jobTitle">
      <li>多年影视剧组跟妆经验</li>
    </ul>
    <div class="works">
      <span class="pull-left">影视作品:</span>
      <ul>
        <li>《沉默河》</li>
      </ul>
    </div>              
    <p>擅长饰品制作，影视妆，古装发件等</p>

  </div>
</div>  <!--well-->   


<div class="well clearfix">
  <div class="teacher">
    <div class="imageContainer pull-left"><img width="130" src="../img/term/casey.png" alt="Casey云" title="Casey云"/></div>
    <h2>Casey云<small>高级造型师</small></h2>
    <ul class="jobTitle">
      <li>中国流行色彩协会会员</li>
      <li>世界形象设计协会浙江杭州区理事</li>
    </ul>
    <div>
      <span class="pull-left">广告:</span><br />
      <ul>
        <li>《百合花的盛开》造型设计兼主化</li>
        <li>《千千浪》造型设计兼主化</li>
        <li>《小小爱》造型设计兼主化</li>
      </ul>       
    </div>                
    <div class="detail">
      <p>2009年毕业于上海专修化妆学校</p>
      <p>2010年担任杭州微微新娘化妆师  </p>
      <p>2011年担任西安化妆培训学校机构讲师老师</p>
       
      <p>有丰富的讲课经验。得到重多学员的喜欢和认可。担任过多个舞台 晚会、T台秀场。现担任凡宫化妆培训文化基础课讲师</p>

      <p>2011年杭州电视台联合举办的《国旗颂》主化</p>
    </div>
  </div>
</div>  <!--well-->   

<div class="well clearfix">
  <div class="teacher">
    <div class="imageContainer pull-left"><img width="130" src="../img/term/rich.png" alt="RICH" title="RICH"/></div>
    <h2>RICH<small>高级美甲老师</small></h2>
    <ul class="jobTitle">
      <li>高级美甲老师</li>
    </ul>
    <p>有多年美甲操作经验</p>
    <p>经验丰富，讲课实际操作和应用为主</p>
    <p>得到老师和学员的重多好评</p>
    <p>现任凡宫美甲讲师</p>
  </div>
</div>  <!--well-->   
  EOS
  

  team.parts.create(
    :title => 'body', 
    :body => team_body,
    :position => 0
  )
end

