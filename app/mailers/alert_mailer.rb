class AlertMailer < ApplicationMailer
  ADMIN = 'bshyman@gmail.com'
  default to:   ADMIN,
          from: ADMIN
  
  def listing_claimed(listing, email)
    msg = "#{email} has claimed listing #{listing.headline}"
    msg += '-----------------------------------------------'
    msg += "#{listing.inspect}"
    mail(subject: 'subj', body: msg.html_safe)
  end
  
  def contact_me(message_params)
    subject  = 'Someone has sent feedback from The Phonebook App'
    @message = message_params
    mail(subject:       subject,
         template_path: 'layouts/mailers'
    
    )
  end
end
