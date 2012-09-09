BackboneRailsApp.Models.Campaign = BackboneRailsApp.Models.Base.extend({
  paramRoot: 'campaign',

  defaults: {
    title: null,
    lang: {}
  },

  setters: {
    lang: function(value) {
      if(typeof(value)=='string')
        return $.parseJSON(value);
      else
        return value;
    }
  },

  toJSON: function() {
    a =  this._cloneAttributes();

    a.lang = JSON.stringify(this.get('lang'))

    return a;
  },

  removeCountry: function(country) {
    languages = this.get('lang')

    delete languages[country]

    this.set({'lang': languages})

    this.trigger('change:lang')

    return this
  },

  removeLanguage: function(country, language) {
    languages = this.get('lang')

    languages[country].splice(languages[country].indexOf(language), 1)

    this.set({'lang': languages})

    this.trigger('change:lang')

    return this
  }
});

BackboneRailsApp.Collections.CampaignsCollection = Backbone.Collection.extend({
    model: BackboneRailsApp.Models.Campaign,
    url: '/campaigns'
  });