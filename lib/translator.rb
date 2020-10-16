require "yaml"

def load_library(data)
  emoticons = YAML.load_file(data)
  emoticon_language = {}
  emoticons.each do |key, value|
    emoticon_language[key] ={}
    emoticon_language[key][:english] = value[0]
    emoticon_language[key][:japanese] = value[1]
  end
  emoticon_language
end

def get_english_meaning(file, emoticon)
  library_check = load_library(file)
  english_meaning = nil
 
end 


def get_japanese_emoticon(file, emoticon)
  check_emoticon = load_library(file)

end