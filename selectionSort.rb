#Selection Sort
#Created: December 11th 2014

class SelectionSort
  def doSelectionSort(array)
    for i in 0..array.size()-2 do
      iMin = i
      for j in i..array.size()-1 do
        # if you find the smaller number from j update the iMin
        if array[j] < array[iMin]
          iMin = j
        end
      end
      #swap the smallest array from j with array[i]
      tmp = array[i]
      array[i] = array[iMin]
      array[iMin] = tmp
    end
  end
end

#generate 10 random numbers for testing
randomArray = Array.new
for i in 1..10 do
  randomArray.push Random.rand(1..100)
end

#display unsorted array
puts "Unsorted array: " + randomArray.to_s

#create instance and sort the random array
sorter = SelectionSort.new
sorter.doSelectionSort(randomArray)

#display sorted array
puts "Sorted array: " + randomArray.to_s


