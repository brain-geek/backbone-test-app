BackboneRailsApp.Views.Campaigns.CountriesView = Backbone.View.extend({
  template: JST["backbone/templates/campaigns/countries"],

  events: {
    "click .language": "remove_language",
    "click .country": "remove_country"
  },

  initialize: function() {
    _.bindAll(this, 'render');
    this.model.bind('change:lang', this.render);
  },

  render: function() {
    $(this.el).html(this.template(this.model.toJSON()));
    return this;
  },

  remove_language: function(event) {
    this.model.removeLanguage($(event.target).data('country'), $(event.target).data('lang'))

    return this;
  },

  remove_country: function(event) {
    this.model.removeCountry($(event.target).data('country'))

    return this;
  }
});
