class ContactMailer < ApplicationMailer
    def new_contact_email
        mail(to: "hunckler.thomas@hotmail.fr", subject: "You got a new order!")
    end
end
