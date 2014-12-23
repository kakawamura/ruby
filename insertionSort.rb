#Insertion Sort
#Created: December 10th 2014

class InsertionSort
  def doInsertionSort(array)
    for i in 1..array.size()-1 do
      key = array[i]
      j = i - 1
      while j>=0 && array[j] > key do
        array[j+1] = array[j]
        j = j - 1
      end
      array[j+1] = key
    end
  end
end

#generate 10 random numbers for testing
randomArray = Array.new
for i in 1..10 do
  randomArray.push Random.rand(1..100)
end

puts "Unsorted array: " + randomArray.to_s

sorter = InsertionSort.new
sorter.doInsertionSort(randomArray)

#display after it is sorted
puts "Sorted array: " + randomArray.to_s
