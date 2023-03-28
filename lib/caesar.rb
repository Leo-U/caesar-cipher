def caesar_cipher(str, shift)
  str.split('').map do |chr|
    arr = chr == chr.upcase ? (65..90).to_a : (97..122).to_a
    arr.any?(chr.ord) ? chr = arr.rotate(arr.index(chr.ord) + shift).first.chr : chr
  end.join
end