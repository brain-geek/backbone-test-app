class BackboneRailsApp.Models.Campaign extends BackboneRailsApp.Models.Base
  paramRoot: 'campaign'

  defaults:
    title: null

class BackboneRailsApp.Collections.CampaignsCollection extends Backbone.Collection
  model: BackboneRailsApp.Models.Campaign
  url: '/campaigns'
