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
    var a =  this._cloneAttributes();

    a.lang = JSON.stringify(this.get('lang'))

    return a;
  },

  set_lang: function(lang) {
    this.set({'lang': lang})

    this.trigger('change:lang')

    return this
  },
  
  add_country: function(country) {
    var languages = this.get('lang')

    languages[country] = []

    return this.set_lang(languages)
  },

  add_language: function(country, language) {
    var languages = this.get('lang')

    languages[country].push(language)

    return this.set_lang(languages)
  },

  remove_country: function(country) {
    var languages = this.get('lang')

    delete languages[country]

    return this.set_lang(languages)
  },

  remove_language: function(country, language) {
    var languages = this.get('lang')

    languages[country].splice(languages[country].indexOf(language), 1)

    return this.set_lang(languages)
  }
});

BackboneRailsApp.Collections.CampaignsCollection = Backbone.Collection.extend({
    model: BackboneRailsApp.Models.Campaign,
    url: '/campaigns'
  });