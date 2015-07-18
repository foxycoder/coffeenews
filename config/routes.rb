
Rails.application.routes.draw do
  resources :articles

  get 'refresh' => 'articles#refresh'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :feeds
end
