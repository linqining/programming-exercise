# 输入一个数字 N，请检查是不是质数

def is_prime(n)
# ....
i=2
j=(n/2).floor
while (i<=j)
  if n%i==0
    return false
    break
  end
  i+=1
end
return true
end

print "请输入数字 N，然后按 Enter: "
n = gets.to_i

if is_prime(n)
  puts "这是质数"
else
  puts "这不是质数"
end
