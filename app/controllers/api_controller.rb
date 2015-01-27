class ApiController < ApplicationController

  require 'csv'

  def population_density
    render json: population_density_hash
  end

  def locales
    locale = params[:lang].to_sym
    render json: Translations.new.for(locale).to_json
  end

  private

  def population_density_hash
    csv = File.read 'countries-population-density.csv'
    keys = ['name', 'code', 'density']
    CSV.parse(csv, converters: :numeric).map {|a| Hash[ keys.zip(a) ] }
  end

end
