class SongInfoController < ApplicationController
  def song_info
    require 'openssl'
    doc = Nokogiri::HTML(open('http://creativitygames.net/random-word-generator/randomwords/2'))
    @word_1 = doc.css('.randomword_1').text
    @word_2 = doc.css('.randomword_2').text
    render template: 'pages/home'
    # require 'openssl'
    # doc = Nokogiri::HTML(open('https://www.abokifx.com/bdc_rate', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    #
    # entries = doc.css('.lagos-market-rates')
    # rate = entries.css('table')[0].css('tr')[1].css('td')[1].text
    # @formattedrate = rate[6..8]
    # render template: 'bdc/home'
  end
end
