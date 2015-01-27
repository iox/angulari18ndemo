TableCtrl = ($scope, $translate, $http, $cookies, $cookieStore) ->
  # Default order
  @order = 'density'
  @reverse = true

  # Set the language from cookies
  if $cookies.locale
    $translate.use $cookieStore.get 'locale'
  else
    $translate.use 'en'

  # Load the population data
  $http.get('/api/population_density.json').success (data, status, headers, config) =>
    @population_density = data

  # Switching languages without a page reload
  @toggleLanguage = ->
    locale = if ($translate.use() is "en") then "es" else "en"
    $translate.use locale
    $cookieStore.put 'locale', locale

  # Action to demonstrate translating a string within the Angular controller
  @translateCountryName = (country) ->
    $translate(country.code).then (translation) ->
      alert "#{country.name} => #{translation}"

  @

TableCtrl.$inject = ['$scope', '$translate', '$http', '$cookies', '$cookieStore']

app.controller 'TableCtrl', TableCtrl