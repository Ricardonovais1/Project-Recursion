#PROBLEM 1 FROM PROJECT EULER
#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multi_3_5(n)
    numbers = (0...n).to_a
    multiples = []
    for num in numbers 
        multiples << num if num % 3 == 0 || num % 5 == 0
    end
    multiples.inject { |a, b| a + b }    
end

sum_multi_3_5(1000)