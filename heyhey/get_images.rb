require 'httparty'

(1..100).to_a.each do |i|
  response = HTTParty.get('http://lorempixel.com/80/80/')
  fname = File.dirname(__FILE__) + "/img_" + i.to_s + ".jpg"
  File.open(fname, "w+") do |f|
     f.syswrite(response.body)
  end
end