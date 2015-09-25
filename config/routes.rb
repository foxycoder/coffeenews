
Rails.application.routes.draw do

  root to: 'articles#index'

  resources :articles

  resources :feeds

  get 'refresh' => 'articles#refresh'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
