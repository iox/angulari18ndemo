Rails.application.routes.draw do
  root 'pages#index'
  get '/pages/table'

  get '/api/population_density'
  get '/api/locales'
end
