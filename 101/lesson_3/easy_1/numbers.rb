#Question 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
num = [1, 2, 3, 4, 5]
num.delete(1)
puts(numbers)
puts(num)

#Question 5

def in_range(n)
  if (10..100).include?(n)
    puts("Yes")
  else
    puts("No")
  end
end
in_range(42)

