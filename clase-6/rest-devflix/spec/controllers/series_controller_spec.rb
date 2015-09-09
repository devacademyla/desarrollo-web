require 'rails_helper'

RSpec.describe SeriesController do
  describe 'GET index' do
    it 'devuelve status ok' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'devuelve series' do
      Serie.create(nombre: 'XXX', descripcion: 'DDD')
      get :index
      json = JSON.parse(response.body)
      expect(response).to have_http_status(:ok)
      expect(json.size).to eq 1
    end
  end

  describe 'GET show' do
    it 'cuando serie existe' do
      Serie.create(nombre: 'TWD', descripcion: 'Terror')
      get :show, id: 1
      expect(response).to have_http_status(:ok)
    end

    it 'cuando serie no existe' do
      get :show, id: 100
      expect(response).to have_http_status(:not_found)
    end
  end
end
