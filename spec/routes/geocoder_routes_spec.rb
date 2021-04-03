RSpec.describe GeocoderRoutes, type: :routes do
  describe 'valid request' do
    let(:city) { 'City 17' }

    it 'returns coordinates' do
      post '/v1', city: city

      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('[45.05,90.05]')
    end
  end

  describe 'invalid request' do
    let(:city) { 'New Yorker' }

    it 'returns invalid result' do
      post '/v1', city: city

      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('null')
    end
  end
end
