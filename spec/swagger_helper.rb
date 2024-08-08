RSpec.configure do |config|
  config.swagger_root = Rails.root.to_s + '/config/swagger'

  config.swagger_docs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API de Salão de Beleza',
        version: 'v1'
      },
      paths: {}
    }
  }

  config.swagger_format = :yaml
end
