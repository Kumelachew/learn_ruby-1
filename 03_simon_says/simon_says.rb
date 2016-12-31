# write your code here
def echo(message)
  message
end

def shout(message)
  message.upcase!
end

def repeat(message, times = nil)
  if times.nil?
    ([message] * 2).join ' '
  else
    ([message] * times).join ' '
  end
end

def start_of_word(word, characters)
  if characters == 1
    word[0]
  else
    characters -= 1
    word[0..characters]
  end
end

def first_word(message)
  message.split(' ')[0]
end

def titleize(word)
  lowercase_words = %w{a an the and but or for nor of over}
  word.split.each_with_index.map {
    |x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize
  }.join(' ')
end

titleize('the bridge over the river kwai')
