# 给定一阵列内含数字，输出最大值

def find_max(array)
  #....
  i=1
  t= array[0]
  while (i<array.size)
    if array[i]>=t
      t=array[i]
    end
    i+=1
  end
  return t
end

arr = [8, 12, 36, 53, 9, 75, 3, 71, 59, 88]

max = find_max(arr)
puts "Max is #{max}" # 应该是 88
