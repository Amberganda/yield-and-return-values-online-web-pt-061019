require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    # binding.pry
    collection << yield(array[i])
    i += 1
  end
end
#binding.pry
puts hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
