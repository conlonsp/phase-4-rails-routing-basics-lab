Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students, only: [:index]
  get '/students/grades', with: 'students#grades'
  get '/students/highest-grade', with: 'students#highest_grade'
end
