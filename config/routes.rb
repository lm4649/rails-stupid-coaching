# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
end
