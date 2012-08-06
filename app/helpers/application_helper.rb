module ApplicationHelper
  def map_number_select(data, start = 0)
    mapped = []
    data.each_with_index { |item, i| mapped << [item, i + start]}

    mapped
  end

  def show_time(time)
    time.strftime("%Y-%m-%d")
  end

  def actived(current, required, class_name = "active")
    current == required ? class_name : nil
  end
  
  def proportion_height(image, width = nil)
    return nil if width.nil?
    orig_width = image.width.to_f
    orig_height = image.height.to_f
    width = width.to_f
    height = ((orig_height / orig_width) * width).round
  end

  def style_image_fu(image, geometry = nil, options={})
    width = geometry.split("x").first.to_f  # "205x" => 205
    style = "height:#{proportion_height(image, width)}px;width:#{width}px;"
    image_fu(image, geometry, options.merge(:style => style))
  end
end
