class UserMailer < ApplicationMailer
  #require 'sendgrid-ruby'
  #include SendGrid

  def daily_products(user, products)
    @user = user
    @products = products
    mail(to: @user.email, subject: "Los productos top de ayer")
  end

  # This is a test
  # def daily_products(user, products)
    # @user = user
    # @products = products

    # from = Email.new(email: 'diego.cardenasaleg@gmail.com')
    # subject = 'Hello World from the SendGrid Ruby Library!'
    # to = Email.new(email: @user.email)
    # content = Content.new(type: 'text/plain', value: 'Hello, Email!')
    # mail = Mail.new(from, subject, to, content)

    # sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    # response = sg.client.mail._('send').post(request_body: mail.to_json)
    # puts response.status_code
    # puts response.body
    # puts response.headers
  # end

end
