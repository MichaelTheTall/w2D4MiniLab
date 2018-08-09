pets = [
{
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
},
{
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
},
{
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
},
{
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
}
]

## 1. Find the pet which breed is Husky
out1 = pets.select {|pet| pet[:breed] == "Husky" }

puts "Answer 1:"
p out1

## 2. Make an array of all of the pets' names
out2 = pets.map {|pet| pet[:name]}

puts ""
puts "Answer 2:"
p out2

## 3. Find out if there are any pets of breed 'Dalmation' (true or false)
result = pets.find {|pet| pet[:breed] == "Dalmation"}
if result != nil
  out3 = "True!"
else
  out3 = "False!"
end

puts ""
puts "Answer 3:"
p out3

## 4. Find the most expensive pet i.e. pet with the highest/maximum price
maxprice = pets.map {|pet| pet[:price]}
out4 = pets.find {|pet| pet[:price] == maxprice.max}

puts ""
puts "Answer 4:"
p out4

## 5. Find the total value (price) of all of the pets added together.
total_price = pets.map {|pet| pet[:price]}
out5 = total_price.inject(0, :+)

puts ""
puts "Answer 5:"
p out5

## 6. Change each pet so their price is 50% cheaper
pets.each {|pet| pet[:price] = pet[:price]/2}

out6 = pets

puts ""
puts "Answer 6:"
p out6
