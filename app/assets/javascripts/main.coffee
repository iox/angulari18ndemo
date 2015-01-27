# Create 'app' angular application (module)
@app = angular.module "AngularI18nDemo", [
  "pascalprecht.translate"
]

@app.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers['common']= {'Content-Type': "application/json;charset=utf-8"}
]

@app.config ['$translateProvider', ($translateProvider) ->
  $translateProvider.useUrlLoader('/api/locales.json')
  $translateProvider.preferredLanguage('en')
]
