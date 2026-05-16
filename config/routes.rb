Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/physics", to: "navi#physics", as: :physics
  get "/biology", to: "navi#biology", as: :biology
  get "/chemistry", to: "navi#chemistry", as: :chemistry

  controller :chemistry do
    get "/sun", action: :sun, as: :sun
    get "/energy_storage", action: :energy_storage, as: :energy_storage
    get "/hydrogen", action: :hydrogen, as: :hydrogen
    get "/bio_fuel", action: :bio_fuel, as: :bio_fuel
  end

  controller :physics do
    get "/hidro_energy", action: :hidro_energy, as: :hidro_energy
    get "/solar_energy", action: :solar_energy, as: :solar_energy
    get "/wind_energy", action: :wind_energy, as: :wind_energy
    get "/nuclear_energy", action: :nuclear_energy, as: :nuclear_energy
    get "/geo_thermal_energy", action: :geo_thermal_energy, as: :geo_thermal_energy
    get "/tidal_energy", action: :tidal_energy, as: :tidal_energy
  end

  controller :biology do
    get "/biomass_sustainability", action: :biomass_sustainability, as: :biomass_sustainability
    get "/biofuel_sustainability", action: :biofuel_sustainability, as: :biofuel_sustainability
    get "/energy_and_climate-change", action: :climate_change, as: :climate_change
  end


  root "application#main", as: :main
end
