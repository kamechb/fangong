module ApplicationHelper
  def map_number_select(data, start = 0)
    mapped = []
    data.each_with_index { |item, i| mapped << [item, i + start]}

    mapped
  end
end
