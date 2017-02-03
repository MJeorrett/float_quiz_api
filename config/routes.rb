Rails.application.routes.draw do

  root 'welcome#index'
  get 'questions/index'

end
