#Bubble Sort O(n^2)
#Created: December 12th 2014
def doBubbleSort(array)
  n = array.size()
  for i in 1..n-1 do
    swapped = false
    for j in 0..(n-1)-i do
      if array[j] > array[j+1]
        #Parallel Assignment
        array[j], array[j+1] = array[j+1], array[j]
        swapped = true
      end
    end
    #if no element swapped it means that it is "sorted"
    if !swapped
      break
    end
  end
end

#generate 10 random numbers for testing
randomArray = Array.new
for i in 1..10 do
  randomArray.push Random.rand(1..100)
end
sortedArray =  [1,2,3,4,5,6,7,8,9,10]

#display unsorted array
puts "Unsorted array: " + randomArray.to_s

#sort
doBubbleSort(randomArray)

#display sorted array
puts "Sorted array: " + randomArray.to_s

