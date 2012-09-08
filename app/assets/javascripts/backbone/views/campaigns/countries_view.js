BackboneRailsApp.Views.Campaigns.CountriesView = Backbone.View.extend({
  template: JST["backbone/templates/campaigns/countries"],

  events: {
    "click span.remove": "remove"
  },

  initialize: function() {
    _.bindAll(this, 'render');
    this.model.bind('change:lang_changed', this.render);
  },

  render: function() {
    $(this.el).html(this.template(this.model.toJSON()));
    return this;
  },

  remove: function(event) {
    country = $(event.target).data('country')
    language =  $(event.target).data('lang')

    languages = this.model.get('lang')

    languages[country].splice(languages[country].indexOf(language), 1)

    //Additional parameter is used because setter plugin does not trigger 'field change' event in backbone
    this.model.set({'lang': languages, 'lang_changed': (new Date().getTime())})

    return this;
  }
});
