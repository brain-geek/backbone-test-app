class BackboneRailsApp.Models.Country extends BackboneRailsApp.Models.Base
  paramRoot: 'country'

  defaults:
    title: null

class BackboneRailsApp.Collections.CountriesCollection extends Backbone.Collection
  model: BackboneRailsApp.Models.Country
  url: '/countries'
