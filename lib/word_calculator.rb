def word_calculator(string)

  array = string.split(" ")

  array.map! {|x| x == "plus" ? "+" : x}.flatten!
  array.map! {|x| x == "minus" ? "-" : x}.flatten!
  array.map! {|x| x == "times" ? "*" : x}.flatten!
  array.map! {|x| x == "divided" ? "/" : x}.flatten!
  array.map! {|x| x == "power" ? "**" : x}.flatten!
  input_keep = array.keep_if {|v| v =~ /[\*\/+-0123456789]/}
  input_keep = input_keep.join("")
  result = eval(input_keep)
  result
end




