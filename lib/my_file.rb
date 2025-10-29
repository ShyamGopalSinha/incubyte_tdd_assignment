class MyFile
    def self.add(numbers)
        return 0 if numbers.empty?
        delimiters = [",", "\n"]
        if numbers.start_with?("//")
        delimiter_section, numbers = numbers.split("\n", 2)
        custom_delimiter = delimiter_section[2] 
        delimiters = [custom_delimiter]
        end
        parts = numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
    end
end