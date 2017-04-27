module Api
  module Endpoints
    class StatusEndpoint < Grape::API
      format :json

      desc 'Get system status.'
      get :status do
        present self, with: Api::Presenters::StatusPresenter
      end
    end
  end
end
