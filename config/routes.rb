Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#show'
  get 'convert/:input/:first/to/:second', to: "temperature#converter"
end
