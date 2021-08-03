# Merge sort problem solved using recursion in Ruby
def merge_sort(array)
  return array if array.length < 2

  left = array[0...(array.length / 2)]
  right = array[(array.length / 2)..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right, result = [])
  while left.any? && right.any?
    left[0] < right[0] ? result << left.shift : result << right.shift
  end
  result << left.shift while left.any?
  result << right.shift while right.any?
  result
end

merge_sort([5, 3, 6, 7, 1, 2, 4, 8])
