Rails.application.routes.draw do
  resources :organizations
  resources :models do
    resources :model_types
  end
  post 'models/:model_id/model_types_price/:id' => 'model_types#model_types_price', as: :model_type
end