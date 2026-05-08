Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/physics", to: "navi#physics", as: :physics
  get "/biology", to: "navi#biology", as: :biology
  get "/chemistry", to: "navi#chemistry", as: :chemistry
  root "application#main", as: :main
end
