require 'prime'

class Fibonacci
  attr_reader :fib_sequence

  def initialize
    @fib_sequence = [0, 1]
    @count        =  0
    @input        = ""
  end

  def first_two
    fib_sequence = [0, 1]
  end

  def plus_one
    plus_one = (fib_sequence[-1].to_i) + (fib_sequence[-2])
    fib_sequence << plus_one
  end

  def first_100
    while fib_sequence.length < 100 do
      fib_sequence << (fib_sequence[-1].to_i) + (fib_sequence[-2].to_i)
    end
    @fib_sequence
  end

  def is_prime?
    Prime.prime?(fib_sequence[@count])
  end

  def get_instruction
    puts "Enter (n)ext or (q)uit:"
    @input = gets.chomp
  end

  def find_next_number
    first_100
    @count += 1
    fib_sequence[@count]

    if is_prime?
      "#{fib_sequence[@count]} (prime)"
    else
      "#{fib_sequence[@count]}"
    end
  end

  def print_next_number
    puts find_next_number
  end

  def print_intro
    puts "\n\nFibonacci is not one of the three tenors!"
  end

  def run

    print_intro


    until @input == "q"
      @input = get_instruction
      if @input == "n"
        print_next_number
      end
    end

    print_outro
  end

  def print_outro
    print "Have a nice day!"
  end
end

fib = Fibonacci.new
fib.run
