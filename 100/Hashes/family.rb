family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"] 
        }

close_family = family.select { |k,v| k == :sisters || k == :brothers}
close_family_array = close_family.values.flatten
p close_family_array