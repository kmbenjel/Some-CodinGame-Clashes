# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# Write an answer using puts
# To debug: STDERR.puts "Debug messages..."
def convert(text)
  rep = 0
  tx = ""

  index = (0...text.size).find {|i|
    t = text[0..i]
    r = text.gsub(t, "")
    t.size >= 1 && r.size < t.size && t.include?(r)
  }
  tx = text if !index
  tx =  text[0..index]
  rep = text.scan(tx).size
 
  STDERR.puts "Index: " + index.to_s
  #STDERR.puts rep
  rep = rep.to_s
  rest = text.gsub(tx, "")
  rest_size = rest.size.to_s
  tx_size = tx.size.to_s
  print tx
  if rest == ""
    puts "*" + rep
  else
    puts "*(#{rep}+#{rest_size}/#{tx_size})"
  end
end

["hellohellohel", "aaaaaaaaaaaaaaa", "aaaaaaaaarg", "abcdabcdabcdabcdab", "fuuuuuuuuuuuuuufuuuuuu"].each {|str| puts str; convert(str)}
