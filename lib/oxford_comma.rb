def oxford_comma(array)
  string = ""
  case array.count
  when 1
    string += array
  when 2
    string = array.join(" and ")
  when >2
    array.each.with_index(1) do |noun, index|
      case index
      when < array.count - 2
        string += "#{noun}, "
      when array.count - 1
end