def to_caps(words)
  if words.length > 10
    words.upcase
  else
    words
  end
end

puts to_caps("My name is John.")
puts to_caps("can you hear me?")