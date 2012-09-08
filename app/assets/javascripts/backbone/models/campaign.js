BackboneRailsApp.Models.Campaign = BackboneRailsApp.Models.Base.extend({
  paramRoot: 'campaign',

  defaults: {
    title: null,
    lang: {}
  },

  setters: {
    lang: function(value) {
      return $.parseJSON(value);
    }
  },

  toJSON: function() {
    a =  this._cloneAttributes();

    a.lang = JSON.stringify(this.get('lang'))

    return a;
  }
});

BackboneRailsApp.Collections.CampaignsCollection = Backbone.Collection.extend({
    model: BackboneRailsApp.Models.Campaign,
    url: '/campaigns'
  });