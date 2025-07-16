class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiters = [",", "\n"]
    
    if (match = numbers.match(%r{\A//(.+)\n}))
      delimiter = match[1]
      numbers = numbers.split("\n", 2).last
      delimiters = [delimiter]
    end
    
    numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
  end
end
