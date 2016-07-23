#one way
advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.split()
advice.collect! {|x| (x == "important" ? "urgent" : x)}
advice = advice.join(' ')
puts advice

#easier
advice.gsub!('urgent', 'imperative')
puts advice

#other possibilities with gsub!()
advice.gsub!(/[a]/, '*')
puts(advice)