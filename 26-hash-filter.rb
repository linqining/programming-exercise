# 给定一个数组包含 Hash，请过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]

# ....
arr.each_with_index do |i,j|
if i["age"]<18
  arr.delete_at(j)
end
end
#
def selection_sort(arr)
  #...
  n=arr.size
  i=0
  t=0
  while(i<n-1)
    j=0
    while ((arr[i-j]["age"].to_i > arr[i+1-j]["age"].to_i)  && (i-j>=0) && (i+1-j<=n))
      t=arr[i-j]
      arr[i-j]=arr[i+1-j]
      arr[i+1-j]=t
      j+=1
    end
      i+=1
  end
  return arr
end
puts "所有成年人，并由小到大: "+selection_sort(arr).to_s

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]
