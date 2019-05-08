require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, lang_data|
    lang_data.each do |lang,type_hash|
      type_hash.each do |type, type_value|
        if new_hash[lang] == nil
          new_hash[lang] = {
            type => type_value,
            :style => [style]
          }
        else
          new_hash[lang][:style] << style
        end
      end
    end
  end
  new_hash
end
