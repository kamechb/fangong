#encoding: utf-8
if defined?(::Refinery::User)
  ::Refinery::User.all.each do |user|
    if user.plugins.where(:name => 'refinerycms-fg').blank?
      user.plugins.create(:name => 'refinerycms-fg',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end


url = "/fg/professions"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '专业',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/students"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '学生',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/works"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '作品',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/reports"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '资讯',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/teachers"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '教师',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/consults"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '留言咨询',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/jobs"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '求职招聘',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end

url = "/fg/activities"
if defined?(::Refinery::Page) && ::Refinery::Page.where(:link_url => url).empty?
  page = ::Refinery::Page.create(
    :title => '活动',
    :link_url => url,
    :deletable => false,
    :menu_match => "^#{url}(\/|\/.+?|)$"
  )
  Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    page.parts.create(:title => default_page_part, :body => nil, :position => index)
  end
end
