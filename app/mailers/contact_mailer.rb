class ContactMailer < ApplicationMailer
    default from: 'contact@marine-weishaar.com'
    def new_contact_email
        mail(to: "mw@marine-weishaar.com", subject: "You got a new contact!")
    end
end
