# Create 'app' angular application (module)
@app = angular.module "AngularI18nDemo", [
  "pascalprecht.translate",
  "ngCookies"
]

@app.config ['$translateProvider', ($translateProvider) ->
  $translateProvider.useUrlLoader('/api/locales.json')
]
