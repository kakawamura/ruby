#Quick Sort
#Created At: Decemeber 22th 2014
#Order: O(nlogn)-Average case, O(n^2)-Worst Case

def quickSort(array, startIndex, endIndex)

  if startIndex < endIndex then 
    #updata the array and get the partition index
    partitionIndex = partition(array, startIndex, endIndex)

    #recursion
    quickSort(array, startIndex, partitionIndex - 1)
    quickSort(array, partitionIndex + 1, endIndex)
  end

end

def partition(array, startIndex, endIndex)
  pivot = array[endIndex]
  partitionIndex = startIndex

  for i in startIndex..endIndex - 1 do 
    
    #if the number is less than the pivot, swap with array[patitionIndex]
    #because array[partitionIndex] is generally the number that will go to the right side of the partition
    #and at anycase the number less than the partitonIndex will be smaller than the pivot
    if array[i] <= pivot then
      #parallel assignment (swap)
      array[i], array[partitionIndex] = array[partitionIndex], array[i]
      partitionIndex += 1
    end
  end

  #swap the array[endIndex] which is the pivot with the the number on the partionIndex
  #the number will be larger than the pivot
  array[partitionIndex], array[endIndex] = array[endIndex], array[partitionIndex]

  return partitionIndex
end


#generate 10 random numbers
randomArray = Array.new
for i in 1..10 do
  randomArray.push Random.rand(1..100)
end

#display unsorted array
puts "Unsorted Array: " + randomArray.to_s

#quick sort
quickSort(randomArray, 0, 9)

#display sorted array
puts "Sorted Array: " + randomArray.to_s
