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
#

