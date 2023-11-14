Rails.application.routes.draw do
  root to: 'articles#index'

  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'

  get 'articles/:id/edit', to: 'articles#edit', as: 'edit'
  patch 'articles/:id', to: 'articles#update'

  delete 'articles/:id', to: 'articles#destroy'

  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show', as: 'article'

end
