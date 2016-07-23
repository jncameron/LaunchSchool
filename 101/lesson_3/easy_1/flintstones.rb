#Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p(flintstones)
flintstones.flatten!()
p(flintstones)

#Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5}
barnes = flintstones.assoc("Barney")
p(barnes)

#Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint = {}
flintstones.each_with_index {|v, i| flint[v] = i}
p(flint)