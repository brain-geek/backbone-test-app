class BackboneRailsApp.Models.Campaign extends Backbone.Model
  paramRoot: 'campaign'

  defaults:
    title: null

class BackboneRailsApp.Collections.CampaignsCollection extends Backbone.Collection
  model: BackboneRailsApp.Models.Campaign
  url: '/campaigns'
