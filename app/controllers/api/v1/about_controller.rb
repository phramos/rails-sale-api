module Api
  module V1
    class AboutController < ApplicationController
      def index
        render json: {name: "sales-api", version: '1'}, status: :ok
      end
    end
  end
end
