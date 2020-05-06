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

  def word_checker(word)
    old_word =
    word_available = false
    @sentence_array.each do |w|
      if word == w
        word_available = true
      end
    end
    if word_available
      @word = word
      old_word = word
    else 
      old_word = false
    end
    old_word
  end

  def set_new_word(new_word)
    @new_word = new_word
  end

  def word_switcher
    new_sentence = String.new()
    sentence_array.each do |word|
      if @word == word
        word = @new_word
      end
      new_sentence.concat("#{word} ")
    end
    new_sentence
  end
end