Rails.application.routes.draw do
  root('home#contact')
  get('contact' => 'home#contact')
  post('thanks' => 'home#thanks')

end


# Create a page accessible at the URL /contact that contains a form with fields for a name, email, and message.

# Upon submission of the contact form, bring the user to a page at the URL /thanks that displays the name, email, and message that was entered on the submitted form.

# Create a homepage accessible at the root URL of the site (that is, http://localhost:3000) that contains a link to the contact page.