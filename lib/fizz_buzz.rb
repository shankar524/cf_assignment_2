class FizzBuzzProblem

  def fizz_buzz number
    fizz="Fizz"
    buzz="Buzz"
    fizz_buzz_string="Fizz Buzz"
    fizz_buzz_store=[]

    number.times do |item|

      check_number=item+1

      if(is_divisible_by_5(check_number) && is_divisible_by_3(check_number)) 
        fizz_buzz_store.push(fizz_buzz_string)
      
      elsif(is_divisible_by_3(check_number))
        fizz_buzz_store.push(fizz)
      
      elsif(is_divisible_by_5(check_number))
        fizz_buzz_store.push(buzz)

      else
        fizz_buzz_store.push(check_number.to_s)
      end
    end

    return fizz_buzz_store.join(", ")
  end

  def is_divisible_by_5 number
    is_divisible_by(number,5)
  end

  def is_divisible_by_3 number
    is_divisible_by(number,3)
  end

  def is_divisible_by(divident,divisor)
    return false unless(divident%divisor==0)
    return true
  end

end