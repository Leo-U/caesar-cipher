def caesar_cipher (str, i)
  return str if i % 26 == 0
  
  lower = {
  0 => "a",
  1 => "b",
  2 => "c",
  3 => "d",
  4 => "e",
  5 => "f",
  6 => "g",
  7 => "h",
  8 => "i",
  9 => "j",
  10 => "k",
  11 => "l",
  12 => "m",
  13 => "n",
  14 => "o",
  15 => "p",
  16 => "q",
  17 => "r",
  18 => "s",
  19 => "t",
  20 => "u",
  21 => "v",
  22 => "w",
  23 => "x",
  24 => "y",
  25 => "z"
  }

upper = {
  0 => "A",
  1 => "B",
  2 => "C",
  3 => "D",
  4 => "E",
  5 => "F",
  6 => "G",
  7 => "H",
  8 => "I",
  9 => "J",
  10 => "K",
  11 => "L",
  12 => "M",
  13 => "N",
  14 => "O",
  15 => "P",
  16 => "Q",
  17 => "R",
  18 => "S",
  19 => "T",
  20 => "U",
  21 => "V",
  22 => "W",
  23 => "X",
  24 => "Y",
  25 => "Z"
  }




  # str.split("").map {|n| 
  #   if n.match?(/[A-Z]/) 
  #     then upper[upper.select {|key, value|value == n}.to_s.match(%r{\d+}).to_s.to_i + i]
  #   elsif n.match?(/[a-z]/)
  #     then lower[lower.select {|key, value|value == n}.to_s.match(%r{\d+}).to_s.to_i + i]
  #   else n = n end}
  # .join
  
  # end





  str.split("").map {|n|
    
    if n.match?(/\w/) then
      if n.match?(/[A-Z]/)
        then focus = upper
      elsif n.match?(/[a-z]/)
        then focus = lower
      end
      
      focus_num = focus.select {|key, value|value == n}.to_s.match(%r{\d+}).to_s.to_i


      if focus_num + i <= 25 && focus_num + i > 0
      #if current number plus shift factor is in range
        puts focus [focus_num + i]
        focus[focus_num + i]
      else
        
        focus[(focus_num + i) % 25 - ((focus_num + i)/25)]
      end

    else n = n
    end
  }
  .join

end