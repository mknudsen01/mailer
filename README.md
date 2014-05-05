mailer
======

Simple API endpoint that sends an email when someone submits a POST request with JSON content

##### Usage
To send an email using ruby instead of cURL:
```ruby
#sender.rb
require 'net/http'

uri = URI('http://vast-hollows-9388.herokuapp.com/')
res = Net::HTTP.post_form(uri, {
  to: "youremail@email.com",
  subject: "SUBJECT",
  body: "I'm doing so awesome on my own, like I found this can of beans."
} )
```