require 'http'

system "clear"

response = HTTP.get("http://localhost:3000/api/random_result_url")
message = response.parse["fortune"]
puts message