# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def answer
    multiples_set1 = (100..999).to_a
    multiples_set2 = multiples_set1

    palindromes = []


    multiples_set1.each do |set1_num|

      multiples_set2.select do |set2_num|
        product = set1_num * set2_num

        num_string = product.to_s
        num_length = num_string.length

        if num_length % 2 == 0
          first_half = num_string.slice(0, (num_length/2))
          second_half = num_string.slice((num_length/2), num_length)


          palindromes << product if first_half.reverse == second_half
        end

      end

    end

    palindromes.max
  end
end