Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/physics", to: "navi#physics", as: :physics
  get "/biology", to: "navi#biology", as: :biology
  get "/chemistry", to: "navi#chemistry", as: :chemistry

  get "/sun", to: "chemistry#sun", as: :sun
  get "/energy_storage", to: "chemistry#energy_storage", as: :energy_storage
  get "/hydrogen", to: "chemistry#hydrogen", as: :hydrogen
  get "/bio_fuel", to: "chemistry#bio_fuel", as: :bio_fuel

  root "application#main", as: :main
end
