include Math
hash = Hash.new

count = 1
('A'..'Z').each do |letter|
  hash[letter] = count
  count += 1
end

fileObj = File.open("/sandbox/ruby_practice/words.txt", "r")

array = fileObj.gets.split(',')


def get_sum(word, hash)
  sum = 0
  (1..word.size-2).each do |index|
    sum += hash[word[index]]
  end
  return sum
end


def is_triangle?(sum)
  a = 1
  b = 1
  c = -2*sum
  n = (-b + sqrt(b**2 - 4*a*c))/(2.0*a)
  n%1 == 0
end

numTriangles = 0

array.each do |word|
  sum = get_sum(word, hash)
  numTriangles += 1 if is_triangle?(sum)
end

puts numTriangles





