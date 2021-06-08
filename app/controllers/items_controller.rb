require "#{Rails.root}/app/controllers/application_controller.rb"

module Api
  module V1
    class ItemsController < ApplicationController
      def index
				items = Item.all
				render json: {items:items}, status: :ok and return
      end
    end    
  end
end
