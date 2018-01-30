# 承上题，请排序并去除重复的数字
# Hint: 可用 arr.sort 排序，和 arr.uniq 去除重复

def filter_even(arr)
  #...
  arr1=[]
  i=0
  while (i<arr.size)
    if arr[i]%2==0
      arr1 << arr[i]
    end
    i+=1
  end

  return arr1
end

arr =  [7, 68, 42, 46, 9, 91, 77, 46, 86, 1]
arr1=filter_even(arr).uniq.sort

puts "#{arr1.to_s}" # 应该是 [42, 46, 68, 86]
