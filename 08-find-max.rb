# 题目: 使用者输入 x,y,z，请输出三个数中最大的数

print "请输入一个数字x，然后按 Enter: "
x = gets.to_f

print "请输入一个数字y，然后按 Enter: "
y = gets.to_f

print "请输入一个数字z，然后按 Enter: "
z = gets.to_f

# ....
if x>y
  if x>z
    puts "最大的数是 x"
  elsif x<z
    puts "最大的数是 z"
  else
    puts "最大的数是 x和z"
  end
elsif x<y
  if y>z
    puts "最大的数是 y"
  elsif y<z
    puts "最大的数是 z"
  else
    puts "最大的数是 y和z"
  end
else
  if y>z
    puts "最大的数是 x和y"
  elsif y<z
    puts "最大的数是 z"
  else
    puts "最大的数是 x,y和z"
  end
end
