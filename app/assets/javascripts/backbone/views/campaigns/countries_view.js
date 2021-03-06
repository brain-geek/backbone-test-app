BackboneRailsApp.Views.Campaigns.CountriesView = Backbone.View.extend({
  template: JST["backbone/templates/campaigns/countries"],

  events: {
    "click .language": "remove_language",
    "click .country": "remove_country",
    "click #add_country": "add_country",
    "keypress input.add_language": "add_language"
  },

  initialize: function() {
    _.bindAll(this, 'render');
    this.model.bind('change:lang', this.render);

    this.countries = new BackboneRailsApp.Collections.CountriesCollection
    this.countries.bind('reset', this.render)
    this.countries.fetch()
  },

  render: function() {
    data = this.model.toJSON()
    data.countries = this.countries.toJSON()

    $(this.el).html(this.template(data));
    return this;
  },

  remove_language: function(event) {
    this.model.remove_language($(event.target).closest('tr').data('country'), $(event.target).data('lang'))

    return this;
  },

  remove_country: function(event) {
    this.model.remove_country($(event.target).closest('tr').data('country'))

    return this;
  },

  add_country: function(event) {
    event.preventDefault();
    event.stopPropagation();

    var value = this.$('#add_country_input').val();

    this.model.add_country(value);
  },

  add_language: function(event) {
    if(event.which == 13 || event.keyCode == 13) {
      event.preventDefault();
      event.stopPropagation();

      var value = $(event.target).val();

      if (value.length > 0) {
        this.model.add_language($(event.target).closest('tr').data('country'), value);
      }

      return false;
    }

    return true
  }  
});
