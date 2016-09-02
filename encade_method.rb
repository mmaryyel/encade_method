#TODO: Refactoriza buscando elegancia 
# def shout_backwards(string)
#   string.upcase.reverse + "!!!"
# end


#AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
  multiplication(array).map{|p| p*p}
end

def multiplication(new_array)  
  new_array.find_all{|x| result(x).count == 0 }
end

def result(num)
  (2..num-1).select(){|i| modulo(num,i)}
end

def modulo(num_1, num)
  num_1 % num == 0
end 

# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
#puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]
