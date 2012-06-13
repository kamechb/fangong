#encoding: utf-8
# if Refinery::Page.where(:menu_match => "^/sitemap$").empty?
#   sitemap_page = Refinery::Page.create!(
#     :title => "网站地图",
#     :deletable => true,
#     :link_url => "/sitemap",
#     :menu_match => "^/sitemap$"
#   )
# 
#   sitemap_body = <<-EOS
# <div class="well">
#   <div class="page-header">
#     <h1>网站地图</h1>
#   </div>
#   <ul>
#     <li><a href="#">首页</a></li>
#     <li>
#       <a href="#">课程</a>
#       <ul>
#         <li><a href="#">影视人物造型弟子班</a></li>
#         <li><a href="#">影视剧组就业弟子班</a></li>
#         <li><a href="#">时尚彩妆全能</a></li>
#         <li><a href="#">影楼精英化妆</a></li>
#         <li><a href="#">彩妆造型</a></li>
#         <li><a href="#">影视特效化妆</a></li>
#         <li><a href="#">化妆师---美术</a></li>
#         <li><a href="#">影视人物造型大专班</a></li>
#       </ul>
#     </li>
#     <li>
#       <a href="#">证书</a>
#       <ul>
#         <li><a href="#">凡宫造型结业证书</a></li>
#         <li><a href="#">世界形象设计协会国际化妆师证书</a></li>
#         <li><a href="#">国家化妆师等级证书</a></li>
#       </ul>
#     </li>
#     <li>
#       <a href="#">资讯</a>
#       <ul>
#         <li><a href="#">最新动态</a></li>
#         <li><a href="#">彩妆资讯</a></li>
#         <li><a href="#">相关专题</a></li>
#       </ul>
#     </li>    
#     <li>
#       <a href="#">作品展示</a>
#       <ul>
#         <li>
#         <a href="#">最新作品</a>
#         <ul>
#           <li><a href="#">塑形毛发</a></li>
#           <li><a href="#">饰品发件</a></li>
#           <li><a href="#">学员天地</a></li>
#           <li><a href="#">现场实践</a></li>
#           <li><a href="#">明星合影</a></li>
#         </ul>
#     </li>      
#     <li>
#       <a href="#">企业合作</a>
#       <ul>
#          <li><a href="#">合作与销售</a></li>
#          <li><a href="#">企业培训</a></li>
#          <li><a href="#">合作机构</a></li>
#       </ul>
#     </li>
#            
#     <li>
#       <a href="#">团队</a>
#     </li>
#     <li>
#       <a href="#">人才就业</a>
#     </li>
#     <li>
#       <a href="#">关于凡宫</a>
#       <ul>
#          <li><a href="#">简介</a></li>
#          <li><a href="#">师资</a></li>
#          <li><a href="#">环境</a></li>
#          <li><a href="#">合作院校</a></li>
#       </ul>
#     </li>
#     <li>       
#       <a href="#">联系我们</a>
#     </li>
#   </ul>
# </div>
#   EOS
# 
#   sitemap_page.parts.create(
#     :title => 'body', 
#     :body => sitemap_body,
#     :position => 0 
#   )
# end
# 
