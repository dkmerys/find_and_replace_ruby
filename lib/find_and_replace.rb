class FNR
  def initialize(sentence)
    @sentence = sentence
    @sentence_array = sentence.split(" ")
  end

  def sentence
    @sentence
  end

  def sentence_array
    @sentence_array
  end    

  def word_to_replace(word)
    word_to_return =
    word_available = false
    @sentence_array.each do |w|
      if word == w
        word_available = true
      end
    end
    if word_available
      @word = word
      word_to_return = word
    else 
      word_to_return = false
    end
    word_to_return
  end
end