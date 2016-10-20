require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end
  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    arr= []
    splt_arr= self.split(/[!|.|?]/)
    arr= splt_arr.reject do |word|  #reject returns an array with the elements for which the block is false
      word.to_s.empty?
    end
    return arr.size
  end
end
