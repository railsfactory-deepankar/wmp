class Spell_digit

 Nums = {
  0 => ' ',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety',
  100 => 'hundred',
  1000 => 'thousand',
  1000000 => 'million',
  1000000000 => 'billion'
}


def self.convert(number1)
c1 = 0   
c2 = 0
c3 = 0
c4 = 0
c5 = 0
c6 = 0
c7 = 0
c8 = 0
n = number1.to_i
number = number1.to_i
while n > 1000000000
	c5 = n / 1000000000
	n = n % 1000000000
end
while n > 1000000
	c6 = n / 1000000
	n = n % 1000000
end
while n > 100000
	c7 = n / 100000
	n = n % 100000
end
while n > 10000
	a = n / 10000
	c8 = a*10
	n = n % 10000
end
while n > 1000
	c1 = n / 1000
	n = n % 1000 
end
while n > 100
	c2 = n / 100
	n = n % 100
end
while n > 10
	c = n / 10
	c3 = c*10
	n = n % 10
end
c4 = n

str = " "
if c5 != 0
	str = str+Nums[c5]+" billion "+" "
end
if c6 != 0
	str = str+Nums[c6]+" million "
end
if c7 != 0
	str = str+Nums[c7]+" hundread "
end
if c8 != 0 and c1 == 0
	str = str+Nums[c8]+" thousand"
end
if c8 == 0 and c1 != 0 
	str = str+Nums[c1]+" thousand"
end
if c1 != 0 and c8 != 0
	if number >= 11000 and number < 20000
	c = c1 + c8
	str = str+Nums[c]+" thousand"
	else
	str = str+Nums[c8]+Nums[c1]+" thousand"
	end
end
if c2 != 0
	str = str+" "+Nums[c2]+" hundread "
end
if c3 != 0
	str = str+Nums[c3]+" "
end
if c4 != 0
	str = str+Nums[c4]+" "
end
return str.strip
end 
end
