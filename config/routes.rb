Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#hello'
  get 'convert/:input/:first/to/:second', to: "converter#temperature"
end
