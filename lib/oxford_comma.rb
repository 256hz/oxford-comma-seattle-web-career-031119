def oxford_comma(array)
  string = ""
  case 
  when array.count == 1
    string += array
  when array.count == 2
    string = array.join(" and ")
  when array.count > 2
    array.each.with_index(1) do |noun, index|
      case 
      when index < array.count - 2
        string += "#{noun}, "
      when index == array.count - 1
        string += "#{noun} and "
      when index == array.count
        string += "#{noun}."
      end
    end
  end
  string
end