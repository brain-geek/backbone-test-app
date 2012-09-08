BackboneRailsApp.Views.Campaigns.EditView = Backbone.View.extend({
  template: JST["backbone/templates/campaigns/edit"],

  events: {
    "submit #edit-campaign": "update",
  },

  update: function(e) {
    var _this = this;
    e.preventDefault();
    e.stopPropagation();

    return this.model.save(null, {
      success: function(campaign) {
        _this.model = campaign;
        return window.location.hash = "/" + _this.model.id;
      }
    })
  },

  render: function() {
    $(this.el).html(this.template(this.model.toJSON()));
    this.$("form").backboneLink(this.model);

    view = new BackboneRailsApp.Views.Campaigns.CountriesView({model : this.model})
    this.$("#countries").append(view.render().el)
    
    return this;
  }
});
