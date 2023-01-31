# check if the array is empty
# sort the array

def median_method(array)
  return nil if array.empty?
  sorted = array.sort
  array_length = sorted.length
  (sorted[(array_length - 1) / 2] + sorted[array_length / 2]) / 2.0

ANOTHER METHOD
  array.sort!
  if array.length % 2 == 0
    (array[array.length / 2] + array[array.length / 2 - 1]) / 2.0
  else
    array[array.length / 2]
  end
end

# arr = [2, 3, 7, 8, 9, 20, 21]
# print median_method(arr)

def fizz_buzz(num)
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0 && !(num % 5 == 0)
    puts "Fizz"
  elsif num % 5 == 0 && !(num % 3 == 0)
    puts "Buzz"
  else 
    puts num
  end
end

# fizz_buzz(2)

def move_zeroes(nums)
  zeroes = nums.select { |num| num == 0}
  nums = nums.select { |num| num != 0}
  print nums
  for i in 0...nums.length - 1
    nums.push(0)
  end
  nums
end

# print move_zeroes([0,1,0,3,12])


def duplicate_encode(word)
  #your code here
  replaced = word.downcase.split("")
  replaced.each do |w|
    index = replaced.index(w)
    if word.count(w) > 1
      replaced[index] = ")"
    else
      replaced[index] = "("
    end
  end
  replaced.join("")


  # ANOTHER METHOD
  # word.downcase.chars.map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }.join
end
# puts duplicate_encode("(( @")

def sum_two_smallest_numbers(numbers)
  #Your code here
  two_lowest = []
  for i in 1..2
    min = numbers.min
    index = numbers.index(min)
    two_lowest.push(numbers[index])
    numbers.delete_at(index)
  end
  two_lowest.sum

  # ANOTHER METHOD
  sorted = numbers.sort
  sorted[0] + sorted[1]

  #  ANOTHER METHOD 2
   numbers.min(2).sum
end

# print sum_two_smallest_numbers([25, 42, 71, 12, 18, 22])

def binary_array_to_number(arr)
  arr.join("").to_i(2)
end 
# print binary_array_to_number([0,0,1,0])

def find_short(s)
    # your code here
    l = []
    sentence = s.split(" ").each {|word| l.push(word.length)}
    l.min
end

# print find_short("i want to travel the world writing code one day")


def spin_words(string)
  string_array = []
  string.split.each do |word|
    if word.length < 5
      string_array << word
    else
      string_array << word.reverse!
    end
  end
  string_array.join(" ")

  #SHORTER CODE
  string_array = []
  string.split(" ").each {|w| w.length < 5 ? string_array << w : string_array << w.reverse!}
  string_array.join(" ")
end

# print spin_words("Hey fellow warriors")

def narcissistic?(value)
  # Code me to return true or false
  sum = 0
  value.digits.each { |d| sum += d ** value.digits.length }
  return true if sum == value
  false
end

# print narcissistic?(153)

def dig_pow(n, p)
  n_array = n.to_s.split("")
  iterator = p
  sum = 0
  n_array.each do |d|
    digit = d.to_i
    sum += digit ** iterator
    iterator += 1
  end
  puts sum
  return (sum % n) == 0 ? sum / n : -1
end
 
  
# print dig_pow(92, 1)

def XO(str)
  x_count = 0
  o_count = 0
  str.each_char do |char|
    if char.downcase == "x"
      x_count += 1
    elsif char.downcase == "o"
      o_count += 1
    else
      char
    end
  end
  x_count == o_count ? true : false

  # ANOTHER METHOD
  # str.downcase.count("x") == str.downcase.count("o")
end

# print XO("ooxXm")

def get_sum(a,b)
  return a if a == b
  min = a < b ? a : b
  max = a > b ? a : b
  sum = 0
  for i in min..max
    sum += i
  end
  sum

  #ANOTHER METHOD
#   return a if a == b
#   a > b ? (b..a).reduce(:+) : (a..b).reduce(:+)
end

# print get_sum(0,0)

def solution(number)
 return 0 if number.negative?
 multiples = []
 for i in 1...number
  if i % 3 == 0 || i % 5 == 0
    multiples.push(i)
  end
 end
 multiples.sum

  # ANOTHER METHOD
  # return 0 if number.negative?
  # (1...number).select {|num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

# print(solution(10))

def solution(string)
  result = ""
  string.split("").each {|x| x == x.upcase ? result += " " + x : result += x}
  result

  # ANOTHER METHOD
  # string.gsub /([A-Z])/, ' \1'
end
# print solution("camelCasing")

def digital_root(n)
  # ...
  return n if n < 10
  sum = 0
  n.to_s.split("").each {|x| sum += x.to_i}
  digital_root(sum)

 # ANOTHER METHOD
 # n < 10 ? n : digital_root(n.digits.sum)
end

# # print digital_root(942)

# #loop through the array
# #for every index create a left and right and sum them 
# # if the sums are equal return index of i
# # def find_even_index(arr)
# #   arr.each do |item|
# #     arr_len = arr.length
# #     item_index = arr.index(item)
# #     left = arr[0...item_index]
# #     right = arr[item_index + 1...arr_len]
# #     if left.sum == right.sum
# #       return item_index
# #     end
# #   end
# #   -1

#   # ANOTHER METHOD
#   # arr.each_index { |i| return i if arr[0...i].sum == arr[(i+1)..-1].sum }
#   -1
# # end

# print find_even_index([1,2,3,4,3,2,1])

def domain_name(url)
  return just the domain name
  url.gsub("http://", "").gsub("https://", "").gsub("www.", "").split(".")[0]

  # ANOTHER METHOD 1
  url.gsub(/(https?:\/\/)?(www\.)?/, '').split('.')[0]

  # ANOTHER METHOD 2
  require 'uri'
  URI.parse(url).host.split('.').first 

end
# print domain_name("http://google.co.jp")


def solution(str)
  return an array of strings split into pairs of two
  str_array = []
  str.split("").each_slice(2) {|x| str_array.push(x)}
  str_array.each do |x|
    if x.length == 1
      x.push("_")
    end
  end
  str_array.map {|x| x.join("")}

  # ANOTHER METHOD
  (str + '_').scan /../
end

# print solution("abc")


def pig_it text
  result = []
  first_arr = text.split(" ")
  first_arr.each do |item|
    second_arr = item.split("")
    second_arr.push(second_arr.shift + "ay")
    result.push(second_arr)
  end
  result = result.map {|x| x.join("")}
  result.each do |item|
    index = result.index(item)
    result[index] = "!" if item == "!ay"
  end
  result.join(" ")


  # ANOTHER METHOD
  text_array = text.split(" ")
  text_array.map! do |word|
    if word.match?(/[[:punct:]]/)
      word
    else
      word = word[1..-1] + word[0] + "ay"
    end
  end
  text_array.join(" ")

  # ANOTHER METHOD
  text.gsub(/(\w)(\w+)*/, '\2\1ay')

  # ANOTHER METHOD
  text.gsub(/(\w)(\w+)*/, '\2\1ay').gsub(/(\w+)ay/, '\1ay')

end

# print pig_it('Pig latin is cool')


def count_bits(n)
  binary = n.to_s(2)
  binary.to_i.digits.count(1)
end

# print count_bits(1234)
def rgb(r, g, b)
  rgb_array = [r, g, b]
  rgb_array.map! do |item|
    if item > 255
      item = 255
    elsif item < 0
      item = 0
    else
      item
    end
  end
  rgb_array.map! { |x| x.to_s(16).rjust(2, "0")}
  rgb_array.join("").upcase    

  ANOTHER METHOD
  [r, g, b].map { |x| [x, 255].min }.map { |x| [x, 0].max }.map { |x| x.to_s(16).rjust(2, "0") }.join("").upcase
end

# print rgb(0, 0, -20)


def solution(input, markers)
  input.gsub(/\s+[#{markers.join}].*$/, '')
end

# print solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])

def score( dice )
  total = 0
  dice_hash = Hash.new(0)
  dice.each do |item|
    dice_hash[item] += 1
  end
  dice_hash.each do |key, value|
    if key == 1 && value >= 3
      total += 1000
      total += (value - 3) * 100
    elsif key == 1 && value < 3
      total += value * 100
    elsif key == 5 && value >= 3
      total += 500
      total += (value - 3) * 50
    elsif key == 5 && value < 3
      total += value * 50
    elsif value >= 3
      total += key * 100
    end
  end
  # total
end
# print score([2, 4, 4, 5, 4])

prereq_courses = [  ["Data Structures", "Algorithms"],
  ["Foundations of Computer Science", "Operating Systems"],
  ["Computer Networks", "Computer Architecture"],
  ["Computer Architecture", "Data Structures"],
  ["Algorithms", "Foundations of Computer Science"],
  ["Software Design", "Computer Networks"]
]

def find_single_occurrence_in_first_index(arr)
  counts = Hash.new(0)
  arr.each do |sub_arr|
    counts[sub_arr.first] += 1
    counts[sub_arr.last] += 1
  end
  counts.select { |_k, v| v == 1 }.keys.last
end

single_occurrence = find_single_occurrence_in_first_index(prereq_courses)
# puts single_occurrence

# regex = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/

def cakes(recipe, available)
  recipe.map { |k, v| available[k] ? available[k] / v : 0 }.min

end

# print cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})

def is_interesting(number, awesome_phrases) 
  if number < 98
    return 0
  elsif number == 98
    return 1
  elsif number == 99
    return 2
  end
  if number.to_s == number.to_s.reverse
    return 2
  elsif (number + 1).to_s == (number + 1).to_s.reverse
    return 1
  elsif (number + 2).to_s == (number + 2).to_s.reverse
    return 1
  elsif awesome_phrases.include?(number)
    return 2
  elsif awesome_phrases.include?(number + 1)
    return 1
  elsif awesome_phrases.include?(number + 2)
    return 1
  else
    return 0
  end

  
end

print is_interesting(1336, [1337, 256])

