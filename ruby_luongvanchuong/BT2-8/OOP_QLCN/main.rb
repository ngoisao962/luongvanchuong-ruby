

puts("nhap vao branch: ")
branch = gets.to_s
puts("nhap vao name: ")
name = gets.to_s
puts("nhap vao age: ")
age = gets.to_s
puts("nhap vao gender: ")
gender = gets.to_s
puts("nhap vao address: ")
address = gets.to_s

engineer2 = Engineer.new(branch,name,age,gender,address)

puts(engineer2)
