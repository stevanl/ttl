class NotificationMailer < ActionMailer::Base
  default from: "stevan@independentfx.com"
  def brochure_email(person)
    @person = person
    mail(:to => 'stevan@mycurrencytransfer.com', :subject => "[TTL]: New Brochure Order Form")
  end
  def rsvp_email(person)
    @person = person
    mail(:to => 'stevan@mycurrencytransfer.com', :subject => "[TTL]: New RSVP Form")
  end
  def nomination_email(person)
    @person = person
    mail(:to => 'stevan@mycurrencytransfer.com', :subject => "[TTL]: New Nomination Submitted")
  end
  def table_booking_email(person)
    @person = person
    mail(:to => 'stevan@mycurrencytransfer.com', :subject => "[TTL]: New Table Booking")
  end
end
