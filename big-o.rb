def add(a, b)
  if a > b
    return a + b
  end

  a - b
end
#Constant 
#No matter what the values of each arguments are, the logic is only executed once

def print_arr_1(arr)
  arr.each do |idx|
    puts el
  end
end
#Linear
#Number of execution depends on the size of argument 

def print_arr_2(arr)
  arr.each_with_index do |el, idx|
    break if idx == arr.length/2 - 1
    puts el
  end
end
#nlog(n)

def print_arr_3(arr)
  arr.each do |el|
    break if el == arr.length/2 - 1
    puts el
  end
end
#nlog(n)

def print_arr_4(arr)
  arr.each do |el|
    break if el == arr.length/2 - 1
    puts el
  end

  arr.each_with_index do |el, idx|
    puts el if idx % 3 == 0
  end

  puts arr.last
end
#nlog(n)

def search(arr, target)
  arr.each_with_index do |el, idx|
    return idx if el == target
  end
end
#O(n)





