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
  i = input_keep[0]
  op = input_keep[1]
  j = input_keep[2]
  two = input_keep[3]
  k = input_keep[4]
puts op
  if op == "**" && two == "**"
    puts "HI"
    result = i.to_i**j.to_i**k.to_i

  elsif op == "**" && two == "+"
    result = i.to_i**j.to_i+k.to_i

  elsif op == "**" && two == "-"
    result = i.to_i**j.to_i-k.to_i

  elsif op == "**" && two == "*"
    result = i.to_i**j.to_i*k.to_i

  elsif op == "**" && two == "/"
    result = i.to_i**j.to_i/k.to_i

  elsif op == "+" && two == "**"
    result = j.to_i**k.to_i+i.to_i

  elsif op == "-" && two == "**"
    result = j.to_i**k.to_i-i.to_i

  elsif op == "*" && two == "**"
    result = j.to_i**k.to_i*i.to_i

  elsif op == "/" && two == "**"
    result = j.to_i**k.to_i/i.to_i

  elsif op == "*" && two == "+"
    result = i.to_i*j.to_i+k.to_i

  elsif op == "+" && two == "*"
    result = j.to_i*k.to_i+i.to_i

  elsif op == "*" && two == "-"
    result = i.to_i*j.to_i-k.to_i

  elsif op == "-" && two == "*"
    result = j.to_i*k.to_i-i.to_i

  elsif op == "/" && two == "+"
    result = i.to_i/j.to_i+k.to_i

  elsif op == "+" && two == "/"
    result = j.to_i/k.to_i+i.to_i

  elsif op == "/" && two == "-"
    result = i.to_i/j.to_i-k.to_i

  elsif op == "-" && two == "/"
    result = j.to_i/k.to_i-i.to_i

  elsif op == "+"
    result = i.to_i+j.to_i

  elsif op == "-"
    result = i.to_i-j.to_i

  elsif op == "*"
    result = i.to_i*j.to_i

  elsif op == "/"
    result = i.to_i/j.to_i

  elsif op == "**"
    result = i.to_i**j.to_i

  else
    input_keep = input_keep.join("")
    i, op, j, two, k = input_keep.scan(/(\d+)([+\-*\/])(\d+)(?:([+\-*\/])(\d+))?/)[0]
    result = i.to_i.send op, j.to_i
    result
    result = result.to_i.send two, k.to_i
  end


end
puts word_calculator("What is 4 plus 2  ")



