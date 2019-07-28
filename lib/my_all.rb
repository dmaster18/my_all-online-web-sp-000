require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i+=1
  end
  if block_return_values.include?(FALSE)
    FALSE
  else  
    TRUE
  block_return_values
end

my_all?([1,2,3]) do |i| 
  i < 2
end