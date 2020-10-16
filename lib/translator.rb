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
  sorry_message = "Sorry, that emoticon was not found"
  library_check.each do |meaning, emoticon_language|
    emoticon_language.each do |language, face|
      if emoticon == face 
        english_meaning = meaning
      end
    end
  end
    if english_meaning == nil
        english_meaning = sorry_message
    end
  english_meaning
end 