require 'pry'
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  #first we shall check if the hash is empty
  return nil if name_hash.size == 0 
  #set a variable equal to the first value 
  #if the subsequent values after the first iteration are lower, redefine the variable to that key
  min_value = 1000
  min_key = ""
  
  name_hash.collect do |key, value|
    # binding.pry
    if value < min_value
      min_value, min_key = value, key
      
    end  
  end  
  min_key
end