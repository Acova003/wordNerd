require 'rubygems'
require 'nokogiri'
require 'open-uri'
class Scraper
  def self.get_page
    doc = Nokogiri::HTML(open("http://creativitygames.net/random-word-generator/randomwords/2"))
  end

  def self.scrape_words
    words = self.get_page.css(".generatorrandomwords")
    word_1 = words.css('.generatorrandomwords').css('li')[0].text
    word_2 = words.css('.generatorrandomwords').css('li')[1].text
    puts word_1
      # word_2 = post.search('rand-small')
      # word_1 = parsed_content.css('.generatorrandomwords').css('li')[0].text
      # word_2 = parsed_content.css('.generatorrandomwords').css('li')[1].text
  end
end
