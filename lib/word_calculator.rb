def word_calculator(string)
  array = string.split("?")
  array = string.split("")
  array.map! {|x| x == "?" ? "" : x}.flatten!
  array = array.join("")
  array = array.split(" ")

  array.map! {|x| x == "plus" ? "+" : x}.flatten!
  array.map! {|x| x == "minus" ? "-" : x}.flatten!
  array.map! {|x| x == "times" ? "*" : x}.flatten!
  array.map! {|x| x == "divided" ? "/" : x}.flatten!
  array.map! {|x| x == "power" ? "**" : x}.flatten!

  input_keep = array.keep_if {|v| v =~ /[\*\/+-0123456789]/}
  input_keep = input_keep.join("")

  i = input_keep[0]
  j = input_keep[2]
  i, op, j = input_keep.scan(/(\d+)([+\-*\/])(\d+)/)[0]
  result =i.to_i.send op, j.to_i
  result
end
puts word_calculator("What is 2 plus 3?")



