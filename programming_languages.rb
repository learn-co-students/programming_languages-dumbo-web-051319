def reformat_languages(languages)
	new_hash = {}

	languages.each do |language_style, language_hashes|
		language_hashes.each do |language, attributes|
			if not new_hash[language]
				new_hash[language] = {:style => [language_style]}
				attributes.each do |key, value|
					new_hash[language][key] = value
				end
			else
				new_hash[language][:style] << language_style
			end
		end
	end

	new_hash
end
