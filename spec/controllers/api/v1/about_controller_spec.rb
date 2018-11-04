require 'rails_helper'

module Api
  module V1
    RSpec.describe AboutController, type: :controller do
      describe "GET #index" do
        it 'returns the api info' do
          get :index

          expect(response).to be_successful
          expect(response_json['name']).to eq('sales-api')
          expect(response_json['version']).to eq('1')

        end
      end
    end
  end
end
