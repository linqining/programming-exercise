# 给定一 Hash，输出有最大 value 的 key

def find_max(hash)
  # ...
  arr=hash.keys
  i=0
  s=0
  t=hash[arr[0]]
  while (i<arr.size)
    if t<=hash[arr[i]]
      t= hash[arr[i]]
      s=arr[i]
    end
    i+=1
  end
return s
end

h = {
  "a" => 71,
  "b" => 38,
  "c" => 21,
  "d" => 80,
  "e" => 10
}

answer = find_max(h)

puts "有最大 value 的是 #{answer}" # 应该是 d
