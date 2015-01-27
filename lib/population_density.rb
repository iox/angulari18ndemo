class PopulationDensity

  def initialize
    @keys = ['name', 'code', 'density']
    @data = CSV.parse(read_csv, converters: :numeric)
  end

  def get_hash
    @data.map {|a| Hash[ @keys.zip(a) ] }
  end

  private

  def read_csv
    File.read 'countries-population-density.csv'
  end

end