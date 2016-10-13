require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
  #  binding.pry
    s=self.split(/\.|\?|\!/)#.count
    s.each do |e|
      s.delete(e) if e.length < 2

    end
    return s.size
  end
end
