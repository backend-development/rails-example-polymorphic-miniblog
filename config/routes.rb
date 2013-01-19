Miniblog::Application.routes.draw do
  resources :quote_attachments


  resources :link_attachments

  resources :articles
  root :to => 'articles#index'
end
