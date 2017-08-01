Rails.application.routes.draw do
  get('home' => 'homework#index')
  get('about' => 'homework#about')
end
