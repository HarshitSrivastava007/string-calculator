class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiters = [",", "\n"]
    
    if (match = numbers.match(%r{\A//(.+)\n}))
      delimiter = match[1]
      numbers = numbers.split("\n", 2).last
      delimiters = [delimiter]
    end

    nums = numbers.split(Regexp.union(delimiters)).map(&:to_i)

    validate_numbers(nums)

    nums.sum
  end

  private
    def validate_numbers(numbers)
      negatives = numbers.select { |num| num < 0 }
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
    end
end
