# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

#given n >= 0

def staircase(n)
  hash = {}
  arr = []
  r = n

  until r == 0
    arr.unshift(r)
    r -= 1
  end

  evens = arr.select {|v| v.even?}
  odds = arr.select {|v| v.odd?}

  a = 0
  until a == odds.length
    hash[odds[a]] = evens[0...a]
    a += 1
  end
  hash
end
