require "titleize"

class Book

  attr_accessor :title

  def title=(string)
    array = string.split
    array.each do |word|
      word.titleize!
    end
    string = array.join(" ")
    string[0] = string[0].capitalize
    @title = string
  end

end

book = Book.new
book.title = "to kill a mockingbird"
