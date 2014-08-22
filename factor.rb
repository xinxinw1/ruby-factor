require "readline"

def factor a
  # use GNU coreutils factor which is much faster than ruby prime_division
  raise "Invalid input #{a.inspect}" if !(a.is_a? Integer) || a <= 0
  return [[1, 1]] if a === 1
  arr = `factor #{a}`.chomp.split(" ")
  arr = arr.slice(1, arr.length).map(&:to_i)
  cnts arr
end

# cnts [1, 2, 1, 3, 4, 5, 5, 6]
# -> [[1, 2], [2, 1], [3, 1], [4, 1], [5, 2], [6, 1]]
def cnts a
  r = []
  found = false
  a.each do |x|
    r.each do |y|
      if y[0] === x
        y[1] += 1
        found = true
        break
      end
    end
    if !found
      r.push([x, 1])
    else
      found = false
    end
  end
  r
end

# get common factors from array of ints
def common a
  a.reduce :gcd
end

# pretty [[2, 3], [3, 1], [5, 6], [11, 3]]
# -> "2^3 * 3 * 5^6 * 11^3"
def pretty a
  a.reduce "" do |s, x|
    s + (s == "" ? "" : " * ") +
      if x[1] == 1
        x[0].to_s
      else
        x[0].to_s + "^" + x[1].to_s
      end
  end
end

# inp("apple", "orange", "pear", "apple")
# -> true
# inp("mango", "orange", "pear", "apple")
# -> false
def inp(x, *a)
  a.each {|v| return true if x === v}
  return false
end

def factor_all input
  nums = input.split("+").map do |n|
    # catch inputs like "test" and "23532 - 2353"
    raise "Invalid input #{input.inspect}" if n !~ /^[0-9]+$/
    n.to_i
  end
  if nums.length == 1
    pretty factor nums[0]
  else
    com = common nums
    if com == 1
      puts nums.map {|n| pretty factor n}.join(" + ")
    else
      div = nums.map {|n| n/com}
      "#{com.to_s} * (#{div.join(" + ")})\n" +
      "#{pretty factor com} * (" + div.map {|n| pretty factor n}.join(" + ") + ")"
    end
  end
end
