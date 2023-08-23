dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

def substrings(str, arr)
  my_hash = Hash.new(0)

  arr.each do |item|
    my_hash[item] = str
      .downcase
      .scan(/#{Regexp.escape(item)}/i)
      .size if str.downcase.match?(item)
  end

  my_hash
end

p substrings("below", dictionary) # { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary) #{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
