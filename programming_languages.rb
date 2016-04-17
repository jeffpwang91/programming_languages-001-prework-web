require 'pry'

def reformat_languages(languages)
  new_hash = {}
  type_style = ''
  style_hash = {}
  languages.each do |style, languages|
    languages.each do |language, type|
      type_style << type.to_s
    end
    type_style << (style_hash[:style] = style).to_s
  end
  new_hash
  binding.pry
end

reformat_languages({
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
)
