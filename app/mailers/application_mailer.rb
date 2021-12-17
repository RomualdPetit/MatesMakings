#class ApplicationMailer < ActionMailer::Base
 # default from: 'matesmaking@hotmail.com'
 # layout 'mailer'
  #end


  # using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'matesmaking@hotmail.com', name: 'MatesMaking')
to = Email.new(email: 'romuol@hotmail.fr')
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
mail = Mail.new(from, subject, to, content)

puts ENV['SENDGRID_API_KEY']

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers