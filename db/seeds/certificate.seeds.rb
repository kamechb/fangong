#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/certificate$").empty?
  certificate_page = Refinery::Page.create!(
    :title => "资质证书",
    :deletable => true,
    :link_url => "/certificate",
    :menu_match => "^/certificate$"
  )

  certificate_body = <<-EOS
<div class="well">
  <div class="page-header">
    <h1>关于证书</h1>
  </div>
  <div class="header2"><h2><span class="title title2">杭州凡宫造型化妆培训机构结业证书</span></h2></div>
  <div class="header2"><h2><span class="title title2">可考取世界形象设计行业协会国际化妆师证书</span></h2></div>
  <ul class="list">
    <li>
      杭州凡宫造型艺术机构是浙江省唯一一家可考取IDA证书的机构。世界形象设计行业协会（World Image Design Industry Association）英文简称“IDA”是形象设计及相关领域的全球性国际对外交流推广非营利性的形象领域最高组织，是中国最高端、最权威的美丽行业组织
    </li>
    <li>
      报考学员需参加本机构三天的考前培训，再统一安排考试。考试费用为800元/人
    </li>
  </ul>
  <img src="../img/certifications/1.png">

  <div class="header2"><h2><span class="title title2">可报考国家化妆师等级证书</span></h2></div>
  <ul>
    <li>
      <h3 class="title3">初级化妆师：（具备下列条件之一者）</h3>
      <ul>
        <li>经劳动或文化教育机构组织的本职业初级正规培训，达到标准学时数，并取得毕（结）业证书。</li>
        <li>本职业学徒期满人员</li>
      </ul>
    </li>
    <li>
      <h3 class="title3">中级化妆师：（具备下列条件之一者）</h3>
      <ul>
        <li>取得职业学校、艺术院校、普通中等专业学校相关专业中专以上毕（结）业证书。</li>
        <li>取得本职业初级职业资格证书后，连续从事本职业工作2年以上</li>
      </ul>                
    </li>
    <li>
      <h3 class="title3">高级化妆师：（具备下列条件之一者）费用：1800元</h3>
      <ul>
        <li>取得本职业中级职业资格证书后，连续从事本职业工作5年以上。</li>
        <li>取得职业技术学院、艺术院校、普通高等院校相关专业大专以上毕业证书</li>
        <li>连续从事本职业12年以上</li>
      </ul>                
    </li>              
  </ul>
  <ul class="thumbnails">
    <li>
      <img src="../img/certifications/2.png">
      <p class="text-center">高级等级证书</p>
    </li>
    <li>
      <img src="../img/certifications/3.png">
      <p class="text-center">中级等级证书</p>
    </li>
  </ul>
</div>
  EOS

  certificate_page.parts.create(
    :title => 'body', 
    :body => certificate_body,
    :position => 0 
  )
end

