
def languages  
  {
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
end

def reformat_languages(languages)
  new_hash = {}
  new_hash[:ruby] = languages[:oo][:ruby]
  new_hash[:ruby][:style] = []
  new_hash[:ruby][:style] << :oo
  new_hash[:javascript] = languages[:oo][:javascript]
  new_hash[:javascript][:style] = []
  new_hash[:javascript][:style] << :oo << :functional
  new_hash[:python] = languages[:oo][:python]
  new_hash[:python][:style] = []
  new_hash[:python][:style] << :oo
  new_hash[:java] = languages[:oo][:java]
  new_hash[:java][:style] = []
  new_hash[:java][:style] << :oo
  new_hash[:clojure] = languages[:functional][:clojure]
  new_hash[:clojure][:style] = []
  new_hash[:clojure][:style] << :functional
  new_hash[:erlang] = languages[:functional][:erlang]
  new_hash[:erlang][:style] = []
  new_hash[:erlang][:style] << :functional
  new_hash[:scala] = languages[:functional][:scala]
  new_hash[:scala][:style] = []
  new_hash[:scala][:style] << :functional
  new_hash
end
