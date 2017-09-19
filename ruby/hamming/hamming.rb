class Hamming
  def self.compute(original, mutation)
    # checks for strands with inequal lengths
    unless original.length == mutation.length
      raise ArgumentError
    end

    # iterates through strands with equal lengths
    difference = 0
    mutation_char = mutation.split("")
    original.each_char.with_index do |character, index|
      unless mutation_char[index] == character
        difference += 1
      end
    end

    difference
  end
end

module BookKeeping
  VERSION = 3
end
