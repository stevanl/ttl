class NotificationMailer < ActionMailer::Base
  default from: "stevan@independentfx.com"
  def brochure_email(person)
    @person = person
    mail(:to => 'stevan@mycurrencytransfer.com', :subject => "New Brochure Order Form")
  end
end
