#MergeSort
#Created: December 14th 2014
#Order: O(nlogn)

def mergeSort(array) 
  #if it is array with only 1 elements, means it is sorted
  if array.size() < 2 
    return
  end
  
  mid = array.size() / 2
  leftArray = Array.new(mid)
  rightArray = Array.new(array.size() - mid)

  #insert first half of the elements to the left array
  for i in 0..leftArray.size()-1 do
    leftArray[i] = array[i]
  end

  #insert the second half of the elements to the right array
  for i in 0..rightArray.size()-1 do
    rightArray[i] = array[i+mid]
  end

  #recursion
  mergeSort(leftArray)
  mergeSort(rightArray)

  #merge two of the sorted arrays
  merge(leftArray, rightArray, array)
end

def merge(leftArray, rightArray, array)
  i = 0
  j = 0
  k = 0

  #loop until either one of the array is done
  while i <  leftArray.size() && j < rightArray.size() do
    if leftArray[i] < rightArray[j] then
      array[k] = leftArray[i]
      i += 1
    else 
      array[k] = rightArray[j]
      j += 1
    end
    k += 1
  end

  #if the leftArray is still left
  while i < leftArray.size() do
    array[k] = leftArray[i]
    k += 1
    i += 1
  end

  #it the rightArray is still left
  while j < rightArray.size() do
    array[k] = rightArray[j]
    k += 1
    j += 1
  end
end

#generate 10 random numbers for testing
randomArray = Array.new
for i in 1..10 do
  randomArray.push Random.rand(1..100)
end

#display unsorted random arrays
puts "Unsorted array: " + randomArray.to_s

#sort using merge sort
mergeSort(randomArray)

#display sorted random arrays
puts "Sorted array: " + randomArray.to_s

