# frozen_string_literal: true

Rails.application.routes.draw do
  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :inforequests, only: %i[index show] do
        collection do
          get :search
        end
      end

      resources :institutions, only: %i[index show] do
        collection do
          get :search
        end
      end
    end
  end
end
