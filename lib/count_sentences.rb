require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
self.end_with?("?") ? true : false
  end

  def exclamation?
self.end_with?("!") ? true : false
  end

  def count_sentences
    sentence=self.split(/\.|\?|\!/)
    sentence.each do |item|
     if item.length < 2 then
       sentence.delete(item)
     end
    end
    return sentence.size
  end
end
