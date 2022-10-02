module Exercise
  module Arrays
    class << self
      def replace(array)
        largest = array.inject { |memo, num| memo > num ? memo : num }
        array.map { |el| el.positive? ? largest : el }
      end

      def search(array, query, low = 0, high = array.length - 1)
        mid = (low + high) / 2
        guess = array[mid]

        return - 1 if low > high || array[low] > query || array[high] < query

        return mid if guess == query

        guess > query ? search(array, query, low, mid - 1) : search(array, query, mid + 1, high)
      end
    end
  end
end
