
def stock_picker(array)
  mx = 0
  start = 0

  ans = [-1, -1]
  array.each_index do |index|
    if array[index] < array[start]
      start = index
    elsif array[index] > array[start]
      if array[index] - array[start] > mx
        mx = array[index] - array[start]
        ans = [start, index]
      end
    end
  end
  ans     
end


# Sample codes
# print stock_picker([17,3,6,9,15,8,6,1,10])
# print stock_picker([7,1,5,3,6,4])
# print stock_picker([3,2,6,5,0,3])