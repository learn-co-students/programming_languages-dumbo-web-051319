def reformat_languages(languages)

	prog_styles = []
	prog_languages = []
	prog_types = []

	languages.each { |style, data|
	prog_styles  << style

		data.each { |language, types|
			prog_languages << language

			types.each { |key, type|
				prog_types << type
			}
		}
	}

	new_hash = {}

	new_hash[prog_languages[0]] = { :type => prog_types[0], :style => [prog_styles[0]] }
	new_hash[prog_languages[1]] = { :type => prog_types[0], :style => [prog_styles[0], prog_styles[1]] }
	new_hash[prog_languages[2]] = { :type => prog_types[0], :style => [prog_styles[0]] }
	new_hash[prog_languages[3]] = { :type => prog_types[3], :style => [prog_styles[0]] }
	new_hash[prog_languages[4]] = { :type => prog_types[3], :style => [prog_styles[1]] }
	new_hash[prog_languages[5]] = { :type => prog_types[3], :style => [prog_styles[1]] }
	new_hash[prog_languages[6]] = { :type => prog_types[3], :style => [prog_styles[1]] }

	return new_hash
end