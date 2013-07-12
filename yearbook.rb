require 'open-uri'
require 'json'

course_url = "http://portal.starterleague.com/courses/43.json"

result = open(course_url).read

data = JSON.parse(result)

students = data["students"]

puts "<!DOCTYPE html>"
puts "<html>"
puts "<head>"
puts "<link rel='stylesheet' href='styles.css'>"
puts "</head>"
puts "<body>"
puts "<ul>"
students.each do |s|
  puts "<li>"
  puts "<img width='200' src='#{s["profile_pic_url"]}'>"
  puts "<h3><a href='http://twitter.com/#{s["twitter"]}'>#{s["first_name"]} #{s["last_name"]}</a></h3>"
  puts "</li>"
end
puts "</ul>"
puts "</body>"
puts "</html>"
