class ContactMailer < ApplicationMailer
    default from: 'notifications@example.com'
    def new_contact_email
        mail(to: "hunckler.thomas@hotmail.fr", subject: "You got a new contact!")
    end
end
