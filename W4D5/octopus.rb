# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def sluggish(arr)
    longest_fish = ''
    arr.each do |fish|
        longest_fish = fish if fish.length > longest_fish[0].length
    end

    longest_fish
end

# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.

def dominant(arr)
    merge_sort(arr)[-1]
end

def merge_sort(arr)
    return arr if arr.length < 2

    mid = arr.length / 2
    left = arr[0...mid]
    right = arr[mid..-1]

    sorted_left = left.merge_sort
    sorted_right = right.merge_sort

    merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    merged_arr = []

    until left.empty? || right.empty?
        if left.first > right.first
            merged_arr << right.shift
        else
            merged_arr << left.shift
        end
    end

    merged_arr + left + right
  end
end

# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever(arr)
    longest_fish = ''
    arr.each do |fish|
        longest_fish = fish if fish.length > longest_fish[0].length
    end

    longest_fish
end

# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

def slow_dance(direction, arr)
    arr.each_with_index do |el, i|
        return i if el == direction
    end
end

# slow_dance("up", tiles_array)
# > 0

# slow_dance("right-down", tiles_array)
# > 3

# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

# fast_dance("up", new_tiles_data_structure)
# > 0

# fast_dance("right-down", new_tiles_data_structure)
# > 3