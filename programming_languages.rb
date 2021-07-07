def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, hashes|
		hashes.each do |language, attributes|
			if not new_hash[language]
				new_hash[language] = {:style => [style]}
				attributes.each do |key, value|
					new_hash[language][key] = value
				end
			else
				new_hash[language][:style] << style
			end
		end
	end
  new_hash
end
