require 'open-uri'
require 'nokogiri'

doc =
  Nokogiri::HTML(open("http://seesaawiki.jp/inisie-megami/d/%a5%ab%a1%bc%a5%c9%b0%ec%cd%f7"))
doc.css('table tr').each do |node|
#   print "keys:", node.keys, ", values:", node.values, "\n"
  puts node.text
end
