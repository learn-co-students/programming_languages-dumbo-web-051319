def reformat_languages(languages)
  new_languages = {}
  languages.each do |type, hash|
    hash.each do |name, attributes|
      new_languages[name] ||= attributes
      new_languages[name][:style] ||= []
      new_languages[name][:style] << type
    end
  end
  new_languages
end

#change from 
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#moving ruby(language) as the first hash and nesting type and style

#should look like - 
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },