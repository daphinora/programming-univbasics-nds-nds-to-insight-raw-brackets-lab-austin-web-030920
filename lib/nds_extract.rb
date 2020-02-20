$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  row_index = 0
  total_gross = 0
  
  while row_index < nds[row_index][:movies].length do
    counter = 0
    director_name = nds[row_index][:name]
    result[director_name] = total_gross
  
    while counter < nds[row_index][:movies].length do
    result[director_name] += nds[row_index][:movies][counter][:worldwide_gross]
     counter += 1   
    end
    row_index += 1 
  end
  result
end

#:)

#my comments:
#eventually you're going to += the returned total into results
#you need a loop or two, dude
#duh
#you got this, silly goose <3

#lol "total_gross" ahhahaha
#you're a child smh

#lesson comments
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!