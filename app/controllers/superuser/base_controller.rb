# frozen_string_literal: true

module Superuser
  class BaseController < ApplicationController
    layout 'superuser'
    before_action :authenticate_admin_user!, unless: :devise_controller?
  end
end
