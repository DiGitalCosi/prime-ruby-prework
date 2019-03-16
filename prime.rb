def primeSieve(n)
  primes = Array.new

  for i in 0..n-2
   primes[i] = i+2
  end

  index = 0
  while Math.sqrt(primes.last).ceil > primes[index]
    (primes[index] ** 2).step(primes.length - 1, primes[index]) 
      {|x| x % primes[index] == 0 ? primes.delete(x) : ""}
    index += 1
  end

  primes
end