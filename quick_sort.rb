
def partition(array , low, high)

  pivot = array[high]
  i = low - 1

  for j in low..high do
    if array[j] >= pivot then

      i += 1
      array[i] , array[j] = array[j] , array[i]

    end
  end

  return i

end

def quick_sort(array, low, high)
  if low < high then

    pivot = partition(array, low, high)

    quick_sort(array, low, pivot - 1)
    quick_sort(array, pivot + 1, high)


  end
end


array = []
puts "how many numbers do you have?"
n = gets.to_i
puts "enter your numbers:"
(0..n - 1).each { |i| number = gets.to_i ;array.append number }
quick_sort(array, 0, array.length-1)
(0..array.length - 1).each { |i| print array[i], " " }