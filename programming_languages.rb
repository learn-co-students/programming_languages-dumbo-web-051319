
# def reformat_languages(languages)
#   new_hash = {}
#   new_hash[:ruby] = {type: "interpreted", style: [:oo]}
#   new_hash[:javascript] = {type: "interpreted", style: [:oo, :functional]}
#   new_hash[:python] = {type: "interpreted", style: [:oo]}
#   new_hash[:java] = {type: "compiled", style: [:oo]}
#   new_hash[:clojure] = {type: "compiled", style: [:functional]}
#   new_hash[:erlang] = {type: "compiled", style: [:functional]}
#   new_hash[:scala] = {type: "compiled", style: [:functional]}
#   return new_hash
# end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, hash|
    hash.each do |names, attributes|
      new_hash[names] ||= attributes
      new_hash[names][:style] ||=[]
      new_hash[names][:style] << type
    end
  end
  return new_hash
end
