Rails.application.routes.draw do
  root('home#contact')
  get('contact' => 'home#contact')
  post('thanks' => 'home#thanks')

end
