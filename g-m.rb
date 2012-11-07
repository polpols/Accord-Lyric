require "rubygems"
require "Nokogiri"
require "open-uri"

local_root="/Users/polpols/"
root="http://grilles-manouches.net"
a=["grilles-jazz", "brassens-jazzy", "grilles-manouches"]

Nokogiri::HTML(open(root)).css('li.mega a').each do |t|
  d=t.attributes['href'].text
  e=d.split("/")[2]
  if a.include?(e) && d.split("/").size>3
    #puts d
    doc=Nokogiri::HTML(open(root+d))
    img=doc.css('#ja-content img').attribute("src").text
    remote_path=root+img
    local_path=local_root+e+"-"+remote_path.split("/")[4]
    File.open(local_path,"wb") do |f|
      open(remote_path,"rb") do |read_f|
        f.write(read_f.read)        
      end
    end
    puts [remote_path,local_path]
  end
end