class ContactMailer < ApplicationMailer
    default from: 'contac@marine-weishaar.com'
    def new_contact_email
        mail(to: "contact@marine-weishaar.com", subject: "You got a new contact!")
    end
end
