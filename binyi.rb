v=ARGV[0]
i=STDIN.read
o=i.split("\n").map{|z|z.split("")}
t=o.transpose
0.upto(6){|c|r=5-t[c].reverse.index{|e|e=~/\W+/}.to_i
x=i.split("\n").map{|e|e.dup}
x[r][c]=v if x[r][c]=='.'
w=x.join("\n")
puts c+1 if !w.match(/(?:([xo])(?=\1\1\1))/mx).nil?||!w.match(/(?:([xo])(?=.{7}\1.{7}\1.{7}\1))/mx).nil?||!w.match(/(?:([xo])(?=.{6}\1.{6}\1.{6}\1))/mx).nil?||!w.match(/(?:([xo])(?=.{8}\1.{8}\1.{8}\1))/mx).nil?}