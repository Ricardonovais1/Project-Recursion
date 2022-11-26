def merge_sort(array)
    return array if array.length < 2

    middle = array.length / 2
    first_half = array[0..middle - 1]
    second_half = array[middle..-1]
    
    sorted_left = merge_sort(first_half)
    sorted_right = merge_sort(second_half)

    merge(sorted_left, sorted_right)
end

def merge(sorted_left, sorted_right)
    merged_array = []
   until sorted_left.empty? || sorted_right.empty?
    if sorted_left[0] < sorted_right[0]
        merged_array << sorted_left.shift
    elsif sorted_left[0] > sorted_right[0]
        merged_array << sorted_right.shift
    end
   end
   merged_array + sorted_left + sorted_right

end

arr = [1, 34, 7, 3, 4, 5, 6, 2]

merge_sort(arr)