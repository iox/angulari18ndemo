class ApiController < ApplicationController

  require 'csv'

  def population_density
    csv = File.read 'countries-population-density.csv'
    render json: CSV.parse(csv)
  end

  def locales
    render json: [1,2,3]
  end

end
