# 请打开 wordcount.txt，计算每个单字出现的次数

doc = File.read("wordcount.txt")

# ...
def wc(filename)
  nline = nword = nchar = 0
  File.open(filename) do |io|
    io.each_line do |line|
      words = line.split(/\s+/).reject{|w| w.empty? }
      #本例中使用了split方法分割单词，当行首有空白字符时，split方法的执行结果中会产生空白字符串，因此我们
      #会删除该空白字符串。
      nline += 1
      nword += words.length
      nchar += line.length
    end
  end
  puts "文件的行数为:#{nline}\n文件的单词数为:#{nword}\n文件的字符数为:#{nchar}"
end
puts wc("wordcount.txt")
#sayGoodnight.rb在这里只是filename文件举例，后面接的文件是可以变更的。
