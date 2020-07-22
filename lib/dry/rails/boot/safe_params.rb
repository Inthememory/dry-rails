# frozen_string_literal: true

Dry::System.register_component(:safe_params, provider: :rails) do
  init do
    require "dry/rails/features/safe_params"
  end

  start do
    ApplicationController.include(Dry::Rails::Features::SafeParams)
    ActionController::API.include(Dry::Rails::Features::SafeParams) if defined?(ActionController::API)
  end
end
