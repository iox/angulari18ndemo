class ApiController < ApplicationController

  require 'csv'

  def population_density
    render json: population_density_hash
  end

  def locales
    render json: [1,2,3]
  end

  private

  def population_density_hash
    csv = File.read 'countries-population-density.csv'
    keys = ['name', 'code', 'density']
    CSV.parse(csv, converters: :numeric).map {|a| Hash[ keys.zip(a) ] }
  end

end
