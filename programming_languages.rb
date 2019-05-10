
def reformat_languages(languages)
  new_hash = {}
languages.each do |types,details|
  details.each do |computer_languages, value|
    new_hash[computer_languages]= value
    new_hash[computer_languages][:style]= []
  end
end
  languages.each do |types, details|
    details.each do |computer_languages, vaalue|
      new_hash[computer_languages][:style] << types
end
end
new_hash
end
