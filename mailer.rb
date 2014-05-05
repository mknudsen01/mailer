require 'sinatra'
require 'dotenv'
require 'mandrill'
Dotenv.load

post '/' do
  email_data = params
  m = Mandrill::API.new ENV['MANDRILL_APIKEY']
  message = {
   :subject=> email_data['subject'],
   :from_name=> "Matthew",
   :text=> email_data['body'],
   :to=>[
     {
       :email=> email_data['to'],
       :name=> "Recipient1"
     }
   ],
   :from_email=>"noreply@example.com"
  }
  sending = m.messages.send message
end