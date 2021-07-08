require 'pry'

def reformat_languages(languages)
  new_hash = {} # Creates a blank hash to store new hash
  languages.each do |style, keys| # iterates through first layer
    keys.each do |language, type| # Iterates through second layer
    new_hash[language] = type # Creates hash key val type
    if new_hash[language][:style].length > 0
      new_hash[language][:style] << style
    else
      new_hash[language][:style] = []
    end
  end
  end
  
  new_hash
end
