Rails.application.routes.draw do
  namespace :api do
    get '/random_result_url' => 'fortune_pages#random_result_action'
    get '/random_numbers_url' => 'fortune_pages#random_numbers_action'
    get '/refresh_count_url' => 'fortune_pages#refresh_count_action'
    get '/bottles_url' => 'fortune_pages#bottles_action'
  end
end
