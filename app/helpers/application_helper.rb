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
end
