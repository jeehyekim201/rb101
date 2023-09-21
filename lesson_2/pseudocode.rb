#1. a method that returns the sum of two integers
    # define a method
    # receive two variables as a parameter
    # add the variables using the '+' operator in the method
    # end the method
    # call the method using two integers
    
    # START
    # DEFINE method(x, y)
    # ADD x + y
    # END
    # CALL the method using two integers
     
#2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
    # define a method
    # receive an array of strings as a parameter
    # set a variable
    # iterate through the string to concatenate all the elements together using 'each'
    # save the string into a variable
    # end the method
    # return the variable
    # call the method using an array of strings
    
    # START
    # DEFINE method(x)
    # SET variable and set it to an empty string
    # ITERATE an array of strings and concatenate all the elements
    # RETURN the variable
    # END
    # CALL the method using an array of strings
    
#3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element
    # define a method named 'every_other'
    # receive an array of integers as a parameter
    # return a new array with every other element from the original array 
    # end the method
    # call 'every_other' with an array of integers as an argument
    
    # START
    # DEFINE every_other(array of integers)
    # SET the result variable to an empty array
    # ITERATE an array of integers to return a new array with every other element from the original array using an array method 'each_with_index' and push the element into the result variable if the index is at even
    # END the iteration
    # RETURN the result
    # END the method 
    # CALL the method using an array of integers
    
#4. a method that determines the index of the 3rd occurrence of a given character in a string. 
    # define a method 
    # receive a character and a string as a parameter
    # set the count variable to zero 
    # iterate the character against the string by turning the string into characters with its index
    # if the character is equivalent to the passed on character, increment count variable by one
    # return i if count is equivalent to 3
    # end the conditional
    # return the nil
    # end the method
    # call the method using two arguments: char, and the string
    
    # START
    # DEFINE the method that takes in a character and a string
    # SET the count variable 
    # ITERATE the string after transforming the string into characters
    # IF the value is equivalent to the character, increment the count by one and return i if count is equivalent to 3
    # END the conditional
    # END the iteration
    # RETURN nil
    # END the method
    # CALL the method using two arguments
    
#5. a method that takes two arrays of numbers and returns the result of merging the arrays, where the first array should become the elements at the even indexes of the returned array and the second array should become the elements at the odd indexes
    # define a method named 'merge'
    # receive two arrays of numbers
    # set a variable that takes in the merged array
    # set a variable for the first array and get its length and do the same for the second array
    # set a variable to get the max number of the two arrays
    # iterate through the max number of the arrays by their index
    # inside the iteration, push in the index of the first array if the index is even and less than its array length
    # similar to the first array, push in the index of the second array if the index is odd and less than its array length
    # end the iteration
    # return merged
    # end the method
    # call the method with two arrays
    
    # START
    # DEFINE the method that takes in two parameters
    # SET the variable merged to an empty array
    # SET the variables that assign the lengths of the first and second arrays
    # SET the variable for the mx lenth of the two arrays
    # ITERATE the max length of the two arrays
    # IF the index is even or odd, push the index of the arrays into the merged variable
    # END the iteration
    # RETURN the variable merged
    # END the method
    # CALL the method using two arguments