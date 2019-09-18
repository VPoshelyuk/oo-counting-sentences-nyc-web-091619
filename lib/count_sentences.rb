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
    arr = self.split(/[(!)(.)(?)]/)
    noEmptyEls = arr.reject { |element| element.empty? }
    binding.pry
    return noEmptyEls.count
  end
end