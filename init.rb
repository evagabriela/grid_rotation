# Code Challenge 
# Input:
  # my_nested_array = [
                # [1,2,3],
                # [4,5,6], 
                # [7,8,9]
              # ]

# Output:
  #my_nested_array.rotate = [
                # [7,4,1]
                # [8,5,2]
                # [9,6,3]
              # ]
class Grid
  def self.rotate(matrix)
    results = []
    col = matrix.size
 
    row = matrix[0].size

    row.times { |i|
      per_line = []
      col.times { |j|
        per_line << matrix[j][i]
       
      }
      results << per_line

    }

    results.each_index{|x|results[x].reverse!}
  end
  
end





# Driver Code
matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

p Grid.rotate(matrix)

# Desire Output = [[7,4,1]
#                  [8,5,2]
#                  [9,6,3]]


