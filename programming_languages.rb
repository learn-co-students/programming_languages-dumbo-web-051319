def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |lan_category, lan|
    lan.each do |language, attributes|
      attributes.each do |attributes, att_value|
        if language == :javascript
          new_hash[language] = {
            :type => att_value,
            :style => [:oo, :functional]
          }
        else
          new_hash[language] = {
            :type => att_value,
            :style => [lan_category]
          }
        end
      end
    end
  end
    new_hash
end
