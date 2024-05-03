require "byebug"
def merge(nums1, m, nums2, n)
  nums2.each_with_index do |num, index|
    nums1[m + index] = num
  end
  quicksort(nums1, 0, n + m - 1)
end

def quicksort(arr, first, last)
  if first < last
    p_index = partition(arr, first, last)
    quicksort(arr, first, p_index - 1)
    quicksort(arr, p_index + 1, last)
  end

  arr
end

def partition(arr, first, last)
  # first select one element from the list, can be any element.
  # rearrange the list so all elements less than pivot are left of it, elements greater than pivot are right of it.
  pivot = arr[last]
  p_index = first

  i = first
  while i < last
    if arr[i] <= pivot
      temp = arr[i]
      arr[i] = arr[p_index]
      arr[p_index] = temp
      p_index += 1
    end
    i += 1
  end
  temp = arr[p_index]
  arr[p_index] = pivot
  arr[last] = temp
  p_index
end
array = merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3)
puts array
