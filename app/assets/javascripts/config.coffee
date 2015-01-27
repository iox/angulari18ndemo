@app.config ['$translateProvider', ($translateProvider) ->
  $translateProvider.useUrlLoader('/api/locales.json')
]
