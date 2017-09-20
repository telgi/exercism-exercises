class Hamming

  def self.compute(original, mutation)
    # checks for strands with inequal lengths
    raise ArgumentError unless original.length == mutation.length
    # iterates through strands with equal lengths
    difference = 0
    original.each_char.with_index do |character, index|
    difference += 1 if character != mutation[index]
      end
    difference
  end
end

module BookKeeping
  VERSION = 3
end
