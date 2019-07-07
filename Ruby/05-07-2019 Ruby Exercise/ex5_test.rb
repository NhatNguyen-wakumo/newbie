require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'
data = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/2019_Major_League_Soccer_season'))
body = data.css('div#bodyContent').css('div#mw-content-text').css('div#mw-content-text.mw-content-ltr').css('div.mw-parser-output').css('table.wikitable.sortable').first.css('tbody')
CSV.open('mls_teams.csv', 'wb') do |csv|

csv << ['Team', 'Head coach', 'Captain', 'Shirt sponsor']
 
      
body.xpath('tr').each do |info|
   infos1 = info.css('td').map {|td| td.text.chomp}

   next if infos1.empty?
	csv << infos1



end
 
end
binding.pry