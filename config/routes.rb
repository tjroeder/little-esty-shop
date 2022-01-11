Rails.application.routes.draw do

  resources :merchants do
    resources :dashboard, only: [:index]
    resources :items do
      patch 'status_change'
    end
    resources :items
    resources :invoices, only: [:index, :show] # TODO Update to use merchant_invoices controller
    resources :invoice_items, only: [:update]
  end

  resources :admin, only: [:index]
  namespace :admin do
    resources :merchants do
      patch 'status_change'
    end
    resources :merchants, only: [:index, :show, :edit, :update]
    resources :invoices, only: [:index, :show]
  end

  resources :transactions
  resources :customers
end
