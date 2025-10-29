class MyFile
    def self.add(numbers)
        return 0 if numbers.empty?
        delimiters = [",", "\n"]
        if numbers.start_with?("//")
        delimiter_section, numbers = numbers.split("\n", 2)
            if delimiter_section.start_with?("//[") 
            custom_delimiters = delimiter_section.scan(/\[([^\]]+)\]/).flatten
            delimiters = custom_delimiters
            else
            delimiters = [delimiter_section[2]]
            end
        end
        parts = numbers.split(Regexp.union(delimiters)).map(&:to_i)
        negatives = parts.select { |n| n < 0 }
        raise "negatives not allowed: #{negatives.join(', ')}" if negatives.any?
        parts.sum
        parts.select { |n| n <= 1000 }.sum
    end
end