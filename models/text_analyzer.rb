# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_reader :text 

    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        words = text.split(" ").count
    end
    
    def count_of_vowels
        text.scan(/[aeoui]/).count
    end

    def count_of_consonants 
        text.scan(/[^aeiou\W]/).count
    end

    def most_used_letter
        letters_array = text.gsub(/[\W]/,'').split('')
        letters_hash = Hash.new(0)
        letters_array.each{|let| letters_hash[let] += 1}
        {letters_hash.key(letters_hash.values.max) => letters_hash.values.max}
    end 
end 

