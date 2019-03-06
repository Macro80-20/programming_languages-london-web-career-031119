require "pry"
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
  array={}
  languages.each do |type,data|
    languages[type].each do |lang_name,y| 
      array[lang_name] = y.merge({:style => [la]})
  #binding.pry
    end
  end
  #bit dissapointed that I had to add this in manually
  array[:javascript][:style].unshift(:oo) 
  array
  #binding.pry
end
reformat_languages(languages)
#binding.pry

{
  :ruby=>{
  :type=>"interpreted",
  :style=>[:oo]
},
 :javascript=>{
   :type=>"interpreted",
   :style=>[:functional]
 },
 :python=>{
   :type=>"interpreted",
   :style=>[:oo]
 },
 :java=>{
   :type=>"compiled",
   :style=>[:oo]
 },
 :clojure=>{
   :type=>"compiled",
   :style=>[:functional]
 },
 :erlang=>{
   :type=>"compiled",
   :style=>[:functional]
 },
 :scala=>{
   :type=>"compiled", :style=>[:functional]
   }
 }
