require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.keys.each do |lang_style|
    languages[lang_style].each do |lang, lang_type|
      if new_hash.include?(lang)
        new_hash[lang][:style] << lang_style
      else
        new_hash[lang] = {
          :type => lang_type.values[0],
          :style => []
        }
        new_hash[lang][:style] << lang_style
      end
    end
  end
  new_hash
end

#reformat_languages(languages)