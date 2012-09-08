BackboneRailsApp.Models.Campaign = BackboneRailsApp.Models.Base.extend({
  paramRoot: 'campaign',

  defaults: {
    title: null,
    lang: '{}'
  }
});

BackboneRailsApp.Collections.CampaignsCollection = Backbone.Collection.extend({
    model: BackboneRailsApp.Models.Campaign,
    url: '/campaigns'
  });