require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
  #first_way:
    self.split(/[.!?]/).delete_if{|i| i.empty?}.count

  #second_way:
    #  counter=0
    #  self.split.each do |sen|
    #    if sen.end_with?("!") || sen.end_with?(".") || sen.end_with?("?")
    #  counter = counter + 1
    #    end
    #   end
    # counter

  #third_way:
      # sen=self.split(/\.|\?|\!/)
      # sen.each do |item|
      #    if item.length < 2
      #    sen.delete(item)
      #    end
      # end
      #   sen.size

    end

end
