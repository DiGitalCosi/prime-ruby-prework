require 'prime'

num = 105557
primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}

primes.include?(num)