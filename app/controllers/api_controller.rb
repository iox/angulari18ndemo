class ApiController < ApplicationController

  require 'csv'

  def locales
    locale = params[:lang].to_sym
    render json: Translations.new.for(locale).to_json
  end

  def population_density
    render json: PopulationDensity.new.get_hash
  end

end
