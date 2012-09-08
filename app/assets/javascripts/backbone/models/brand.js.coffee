class BackboneRailsApp.Models.Brand extends BackboneRailsApp.Models.Base
  paramRoot: 'brand'

  defaults:
    title: null

class BackboneRailsApp.Collections.BrandsCollection extends Backbone.Collection
  model: BackboneRailsApp.Models.Brand
  url: '/brands'
