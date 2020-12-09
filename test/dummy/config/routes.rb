Rails.application.routes.draw do
  mount XApiClient::Engine => "/x_api_client"
end
