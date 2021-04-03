require_relative 'config/environment'

map '/geocoders' do
  run GeocoderRoutes
end
