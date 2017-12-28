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

def searchity_search(arr, target)
  results = []
  arr.each do |el|
    results << search(arr, target + el)
  end

  results  
end
#O(n)

def searchity_search_2(arr, target)
  results = []
  arr.each do |el|
    results << search(arr, el)
  end

  results  
end
#O(n)


def rec_mystery(n)
  return n if n < 5

  rec_mystery(n - 5)
end
#O(n)

def rec_mystery_2(n)
  return 0 if n == 0

  rec_mystery_2(n/5) + 1
end
#nlog(n)

void rec_mystery_3(int n, int m, int o)
{
  if (n <= 0)
  {
    printf("%d, %d\n", m, o);
  }
  else
  {
    rec_mystery_3(n-1, m+1, o);
    rec_mystery_3(n-1, m, o+1);
  }
}
#2^n

class Array
  def grab_bag
    return [[]] if empty?
    bag = take(count - 1).grab_bag
    bag.concat(bag.map { |handful| handful + [last] })
  end
end
#2^n


