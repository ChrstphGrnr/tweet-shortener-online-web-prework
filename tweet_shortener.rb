require 'pry'
def dictionary
 
  dictionary = {  :"hello" => "hi", :"to" => "2", :"two" => "2", :"too" => "2", :"for" => "4", :"four" => "4", :"be" => "b", :"you" => "u",  :"at" => "@", :"and" => "&"}

end

def word_substituter(tweets)
  tweets_ary = tweets.split(" ")
  dictionary.each do |key, value|
    if tweets_ary.any? {|word| word.include?(key)}
      tweets_ary(key) = value
    end
  end
  tweets_ary.join(" ")
end