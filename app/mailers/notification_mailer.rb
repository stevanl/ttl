class NotificationMailer < ActionMailer::Base
  default from: "TrainE-TraidE Awards <awards@traine-traide.org.uk>"
  def brochure_email(person)
    @person = person
    mail(:to => ['mark@jam-events.com', 'debbie@traine-traide.org.uk', 'shraga@traine-traide.org.uk', 'desi@jam-events.com'], :bcc => 'stevan@mycurrencytransfer.com', :subject => "TTL: New Brochure Order Form")
  end
  def rsvp_email(person)
    @person = person
    mail(:to => ['mark@jam-events.com', 'debbie@traine-traide.org.uk', 'shraga@traine-traide.org.uk', 'desi@jam-events.com'], :bcc => 'stevan@mycurrencytransfer.com',:subject => "TTL: New RSVP Form")
  end
  def nomination_email(person)
    @person = person
    mail(:to => ['mark@jam-events.com', 'debbie@traine-traide.org.uk', 'shraga@traine-traide.org.uk', 'desi@jam-events.com'], :bcc => 'stevan@mycurrencytransfer.com',:subject => "TTL: New Nomination Submitted")
  end
  def nominee_email(person)
    @person = person
    mail(:to => person.email, :subject => "You have been nominated for a TrainE-TraidE Business Award!")
  end
  def table_booking_email(person)
    @person = person
    mail(:to => ['mark@jam-events.com', 'debbie@traine-traide.org.uk', 'shraga@traine-traide.org.uk', 'desi@jam-events.com'], :bcc => 'stevan@mycurrencytransfer.com',:subject => "TTL: New Table Booking")
  end
end
