Rails.application.routes.draw do
  resources :questions, only: [:index, :create, :new, :edit, :show, :update] do
      resources :answers, only: [:index, :create, :new, :edit, :show, :update]
    end

    root 'questions#index'
end
