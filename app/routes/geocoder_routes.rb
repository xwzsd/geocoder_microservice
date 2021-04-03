class GeocoderRoutes < Application
  namespace '/v1' do
    post do
      result = Geocoder.geocode(params['city'])
      pp result
      response.status = 200
      result.to_json
    end
  end
end
