
def map(source_array)
  map = []
  index = 0
  while index < source_array.length do
    base = source_array[index]
    map << yield(base)
    index += 1
  end
 
return map
end

def reduce(source_array, starting_value =  nil)
  startint_index = starting_value ? 0 : 1
  starting_value ||= source_array[0]
  source_array[startint_index..-1].each do |el| 
    starting_value || el
    starting_value = yield(starting_value, el)
    
  end
  starting_value
  
end




