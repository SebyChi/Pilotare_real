Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/physics", to: "navi#physics", as: :physics
  get "/biology", to: "navi#biology", as: :biology
  get "/chemistry", to: "navi#chemistry", as: :chemistry

  get "/sun", to: "chemistry#sun", as: :sun
  get "/energy_storage", to: "chemistry#energy_storage", as: :energy_storage
  get "/hydrogen", to: "chemistry#hydrogen", as: :hydrogen
  get "/bio_fuel", to: "chemistry#bio_fuel", as: :bio_fuel

  get "/hidro_energy", to: "physics#hidro_energy", as: :hidro_energy
  get "/solar_energy", to: "physics#solar_energy", as: :solar_energy
  get "/wind_energy", to: "physics#wind_energy", as: :wind_energy
  get "/nuclear_energy", to: "physics#nuclear_energy", as: :nuclear_energy
  get "/geo_thermal_energy", to: "physics#geo_thermal_energy", as: :geo_thermal_energy
  get "/tidal_energy", to: "physics#tidal_energy", as: :tidal_energy

  root "application#main", as: :main
end
