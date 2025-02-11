require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # binding.pry
    total = 0
    self.split(/[.?!]/).each do |sentence|
      if sentence.length > 1
        total += 1
      end
    end
    total
  end
end