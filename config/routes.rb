Rails.application.routes.draw do

  resources :merchants do
    resources :dashboards, only: [:index]
    resources :items
    resources :invoices, only: [:index, :show] # TODO Update to use merchant_invoices controller
    resources :invoice_items, only: [:update]
  end

  resources :admin, only: [:index]
  namespace :admin do
    resources :merchants, only: [:index]
    resources :invoices, only: [:index]
  end

  resources :transactions
  resources :customers
end
