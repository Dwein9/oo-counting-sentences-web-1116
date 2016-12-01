require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    self.split(" ").each do |x|
      if x.exclamation? || x.question? || x.sentence?
        count +=1
      end
    end
    count
  end
end
