#encoding: utf-8
if Refinery::Page.where(:menu_match => "^/partner_school$").empty?
  partner_school_page = Refinery::Page.create!(
    :title => "隐私声明",
    :deletable => true,
    :link_url => "/partner_school",
    :menu_match => "^/partner_school$"
  )

  partner_school_body = <<-EOS
<div class="well">
  <img src="../img/schools/1.png" />
  <p></p>
</div>
<div class="well">
  <img src="../img/schools/2.png" />
  <p></p>
</div>
  EOS

  partner_school_page.parts.create(
    :title => 'body', 
    :body => partner_school_body,
    :position => 0 
  )
end

