# This class represents a Book
class Book
  attr_accessor :title

  # capitalize first letter of the book's title
  def title=(book_title)
    # words to ignore when capitalizing
    conjunctions = %w(and in the of a an)

    # put input title into an array
    titles = book_title.split(' ')

    # store capitalized words
    captialized_titles = []

    # iterate through each word in a given title
    # and if the word is not one of the conjuction
    # words, then capitalize it
    titles.each do |title|
      if conjunctions.include? title
        captialized_titles << title
      else
        temp_title = title.capitalize
        captialized_titles << temp_title
      end
    end

    # always capitalize the first character of the first word
    # for example the word 'the' is one of the conjuction word
    # but if its the first word n the title, make sure to capitalize it
    captialized_titles[0] = captialized_titles[0].capitalize

    # finally return the final capitalized title
    @title = captialized_titles.join(' ')
  end
end
