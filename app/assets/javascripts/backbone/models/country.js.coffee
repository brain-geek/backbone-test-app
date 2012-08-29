class BackboneRailsApp.Models.Country extends Backbone.Model
  paramRoot: 'country'

  defaults:
    title: null

class BackboneRailsApp.Collections.CountriesCollection extends Backbone.Collection
  model: BackboneRailsApp.Models.Country
  url: '/countries'
