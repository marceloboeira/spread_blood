class ApplicationMailer < ActionMailer::Base
  default from: ENV['SB_MAIL_SENDER']
  layout 'mailer'
end
